#!/usr/bin/env python3
"""
Create SQL INSERT statements for UFPrevalueSource table for each prevalue source.
Uses the correct lookupItemFolder Content Key GUID from the corresponding folder.
Includes conditional checks to prevent duplicate inserts.
"""

import os
import xml.etree.ElementTree as ET
import uuid

def extract_content_key_from_xml(file_path):
    """Extract the Content Key GUID from an XML file."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        root = ET.fromstring(content)
        content_key = root.get('Key')
        alias = root.get('Alias')
        
        return content_key, alias
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return None, None

def get_lookupitemfolder_content_key(folder_name):
    """Get the Content Key GUID from the corresponding lookupItemFolder .config file."""
    # Path to the lookupItemFolder .config file
    folder_config_path = os.path.join("adverse-health-events", folder_name, f"{folder_name}.config")
    
    if os.path.exists(folder_config_path):
        content_key, alias = extract_content_key_from_xml(folder_config_path)
        return content_key
    else:
        print(f"❌ Warning: lookupItemFolder config not found: {folder_config_path}")
        return None

def create_sql_insert(prevalue_source_key, name, folder_name, lookupitemfolder_content_key):
    """Create SQL INSERT statement for UFPrevalueSource with conditional check."""
    
    # Generate a new GUID for the prevalue source key
    prevalue_source_guid = str(uuid.uuid4())
    
    # Create the JSON definition
    json_definition = f'''{{
    "value": "{name}",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {{
        "RootNode": "{{\\"type\\":\\"content\\",\\"id\\":\\"{lookupitemfolder_content_key}\\",\\"dynamicRoot\\":{{\\"originKey\\":\\"{lookupitemfolder_content_key}\\",\\"originAlias\\":\\"ByKey\\\"}}}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    }},
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "{prevalue_source_guid}",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}}'''
    
    # Create the SQL INSERT statement with conditional check
    sql_insert = f"""-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '{prevalue_source_guid}')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('{prevalue_source_guid}','{name}','{json_definition}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: {name} (Key: {prevalue_source_guid})';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: {name} (Key: {prevalue_source_guid})';
END"""
    
    return sql_insert

def main():
    """Main function to create SQL INSERT statements for all prevalue sources."""
    
    prevalue_dir = "prevalue-sources"
    
    if not os.path.exists(prevalue_dir):
        print(f"❌ Directory {prevalue_dir} not found!")
        return
    
    print("🔄 Creating SQL INSERT statements for UFPrevalueSource...")
    print("   🔧 Using correct lookupItemFolder Content Key GUIDs")
    print("   🛡️ Including conditional checks to prevent duplicates")
    print()
    
    # Get all .config files and sort them
    config_files = []
    for file in os.listdir(prevalue_dir):
        if file.endswith('.config'):
            config_files.append(file)
    
    config_files.sort()
    
    # Create output file
    output_file = "prevalue_source_inserts.sql"
    
    with open(output_file, 'w', encoding='utf-8') as sql_file:
        sql_file.write("-- SQL INSERT statements for UFPrevalueSource table\n")
        sql_file.write("-- Generated for Umbraco Forms prevalue sources\n")
        sql_file.write("-- Uses correct lookupItemFolder Content Key GUIDs as RootNode\n")
        sql_file.write("-- Includes conditional checks to prevent duplicate inserts\n")
        sql_file.write("-- Date: 2025-10-03\n\n")
        sql_file.write("-- Begin transaction for safety\n")
        sql_file.write("BEGIN TRANSACTION;\n\n")
        sql_file.write("DECLARE @ErrorCount INT = 0;\n\n")
        
        success_count = 0
        error_count = 0
        
        for filename in config_files:
            file_path = os.path.join(prevalue_dir, filename)
            prevalue_source_key, alias = extract_content_key_from_xml(file_path)
            
            if prevalue_source_key and alias:
                folder_name = filename.replace('.config', '')
                
                # Get the correct lookupItemFolder Content Key GUID
                lookupitemfolder_content_key = get_lookupitemfolder_content_key(folder_name)
                
                if lookupitemfolder_content_key:
                    sql_insert = create_sql_insert(prevalue_source_key, alias, folder_name, lookupitemfolder_content_key)
                    
                    sql_file.write(f"-- {alias} ({folder_name})\n")
                    sql_file.write(f"-- Prevalue Source Key: {prevalue_source_key}\n")
                    sql_file.write(f"-- lookupItemFolder Content Key: {lookupitemfolder_content_key}\n")
                    sql_file.write(sql_insert)
                    sql_file.write("\n\n")
                    
                    success_count += 1
                    print(f"✅ {filename}: {alias}")
                    print(f"   📁 lookupItemFolder Key: {lookupitemfolder_content_key}")
                else:
                    error_count += 1
                    print(f"❌ {filename}: Missing lookupItemFolder config")
            else:
                error_count += 1
                print(f"❌ {filename}: Failed to extract prevalue source data")
        
        # Add transaction completion
        sql_file.write("-- Complete transaction\n")
        sql_file.write("IF @ErrorCount = 0\n")
        sql_file.write("BEGIN\n")
        sql_file.write("    COMMIT TRANSACTION;\n")
        sql_file.write("    PRINT 'All UFPrevalueSource records processed successfully.';\n")
        sql_file.write("END\n")
        sql_file.write("ELSE\n")
        sql_file.write("BEGIN\n")
        sql_file.write("    ROLLBACK TRANSACTION;\n")
        sql_file.write("    PRINT 'Transaction rolled back due to errors.';\n")
        sql_file.write("END\n")
    
    print()
    print(f"📄 SQL INSERT statements written to: {output_file}")
    print(f"✅ Success: {success_count} statements created")
    if error_count > 0:
        print(f"❌ Errors: {error_count} statements failed")
    print()
    print("🛡️ Features included:")
    print("   ✅ IF NOT EXISTS checks to prevent duplicates")
    print("   ✅ Transaction wrapper for safety")
    print("   ✅ PRINT statements for execution feedback")
    print("   ✅ Error handling and rollback capability")
    print()
    
    # Show the first one (Cap Methodology) as an example
    print("📋 Example - Cap Methodology:")
    cap_file = os.path.join(prevalue_dir, "cap-methodology.config")
    if os.path.exists(cap_file):
        prevalue_source_key, alias = extract_content_key_from_xml(cap_file)
        lookupitemfolder_content_key = get_lookupitemfolder_content_key("cap-methodology")
        
        if prevalue_source_key and alias and lookupitemfolder_content_key:
            print(f"   📊 Prevalue Source Key: {prevalue_source_key}")
            print(f"   📁 lookupItemFolder Key: {lookupitemfolder_content_key}")
            print(f"   🏷️  Name: {alias}")
            print()
            sql_insert = create_sql_insert(prevalue_source_key, alias, "cap-methodology", lookupitemfolder_content_key)
            print("   SQL Preview:")
            print("   " + sql_insert.split('\n')[0])
            print("   " + sql_insert.split('\n')[1])
            print("   ...")

if __name__ == "__main__":
    main()

