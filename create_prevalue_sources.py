#!/usr/bin/env python3
"""
Create Umbraco Forms prevalue source XML files for each lookupItemFolder.
"""

import os
import uuid
from datetime import datetime

def create_prevalue_source_xml(folder_name, sort_order):
    """Create XML content for a prevalue source."""
    
    # Generate unique GUID for this folder
    content_key = str(uuid.uuid4())
    
    # Create a clean alias from folder name
    alias = folder_name.replace('-', ' ').title()
    
    # Create the XML content
    xml_content = f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{content_key}" Alias="{alias}" Level="4">
  <Info>
    <Parent Key="9be72476-19a5-4e57-a3e6-f433bcdec4c8">Lookup Items</Parent>
    <Path>/Home/Config/LookupItems/{folder_name}</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItemFolder</ContentType>
    <CreateDate>2025-10-03T14:32:47</CreateDate>
    <NodeName Default="{alias}" />
    <SortOrder>{sort_order}</SortOrder>
    <Published Default="false" />
    <Schedule />
    <Template />
  </Info>
  <Properties />
</Content>'''
    
    return xml_content

def main():
    """Main function to create prevalue source XML files."""
    
    # Create the prevalue-sources directory
    output_dir = "prevalue-sources"
    os.makedirs(output_dir, exist_ok=True)
    
    # Get list of all lookupItemFolder directories
    base_dir = "adverse-health-events"
    folders = []
    
    for item in os.listdir(base_dir):
        item_path = os.path.join(base_dir, item)
        if os.path.isdir(item_path):
            folders.append(item)
    
    # Sort folders for consistent ordering
    folders.sort()
    
    print("🔄 Creating Umbraco Forms prevalue source XML files...")
    print(f"📁 Output directory: {output_dir}/")
    print()
    
    created_count = 0
    
    for i, folder_name in enumerate(folders, 1):
        # Create XML content
        xml_content = create_prevalue_source_xml(folder_name, i)
        
        # Create filename (use folder name + .config)
        filename = f"{folder_name}.config"
        file_path = os.path.join(output_dir, filename)
        
        # Write XML file
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(xml_content)
        
        created_count += 1
        
        # Create clean display name
        display_name = folder_name.replace('-', ' ').title()
        print(f"✅ {filename}: {display_name}")
    
    print()
    print("📊 Summary:")
    print(f"   ✅ Created: {created_count} prevalue source XML files")
    print(f"   📁 Location: {output_dir}/")
    print()
    print("🎉 Prevalue source XML files created successfully!")
    
    # List all created files
    print()
    print("📋 Created Files:")
    for filename in sorted(os.listdir(output_dir)):
        if filename.endswith('.config'):
            print(f"   - {filename}")

if __name__ == "__main__":
    main()

