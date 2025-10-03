#!/usr/bin/env python3
"""
Fix prevalue source XML files:
1. Keep <Schedule /> and <Template /> nodes
2. Update SortOrder to start at 11
3. Remove spaces from folder name in Path only
"""

import os
import uuid
from datetime import datetime

def create_prevalue_source_xml(folder_name, sort_order):
    """Create XML content for a prevalue source with correct formatting."""
    
    # Generate unique GUID for this folder
    content_key = str(uuid.uuid4())
    
    # Create a clean alias from folder name (with spaces)
    alias = folder_name.replace('-', ' ').title()
    
    # Create path with no spaces in folder name
    path_folder_name = folder_name.replace('-', '').replace(' ', '')
    
    # Create the XML content
    xml_content = f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{content_key}" Alias="{alias}" Level="4">
  <Info>
    <Parent Key="9be72476-19a5-4e57-a3e6-f433bcdec4c8">Lookup Items</Parent>
    <Path>/Home/Config/LookupItems/{path_folder_name}</Path>
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
    """Main function to recreate prevalue source XML files with correct formatting."""
    
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
    
    print("🔄 Fixing prevalue source XML files...")
    print("   ✅ Keeping <Schedule /> and <Template /> nodes")
    print("   📊 Updating SortOrder to start at 11")
    print("   🔧 Removing spaces from folder names in Path only")
    print()
    
    updated_count = 0
    
    for i, folder_name in enumerate(folders):
        # Create XML content with sort order starting at 11
        sort_order = 11 + i
        xml_content = create_prevalue_source_xml(folder_name, sort_order)
        
        # Create filename (use folder name + .config)
        filename = f"{folder_name}.config"
        file_path = os.path.join(output_dir, filename)
        
        # Write XML file
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(xml_content)
        
        updated_count += 1
        
        # Create clean display name and path name for output
        display_name = folder_name.replace('-', ' ').title()
        path_name = folder_name.replace('-', '').replace(' ', '')
        print(f"✅ {filename}: {display_name} (Path: /Home/Config/LookupItems/{path_name}, SortOrder: {sort_order})")
    
    print()
    print("📊 Summary:")
    print(f"   ✅ Updated: {updated_count} prevalue source XML files")
    print(f"   📊 SortOrder range: 11 to {10 + len(folders)}")
    print(f"   📁 Location: {output_dir}/")
    print()
    print("🎉 Prevalue source fixes completed successfully!")
    
    # Show examples of path formatting
    print()
    print("📋 Path Format Examples:")
    example_folders = folders[:3]
    for folder in example_folders:
        display_name = folder.replace('-', ' ').title()
        path_name = folder.replace('-', '').replace(' ', '')
        print(f"   - {display_name}: /Home/Config/LookupItems/{path_name}")

if __name__ == "__main__":
    main()

