#!/usr/bin/env python3
"""
Fix XML issues in lookup item files:
1. Remove <Schedule /> and <Template /> nodes
2. Add <SortOrder> nodes where missing for files with numeric key values
"""

import os
import re
import xml.etree.ElementTree as ET

def is_numeric(value):
    """Check if a string represents a numeric value."""
    try:
        float(value)
        return True
    except ValueError:
        return False

def fix_xml_file(file_path):
    """Fix XML issues in a single config file."""
    try:
        # Read the file content
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Parse XML
        root = ET.fromstring(content)
        
        # Check if this is a lookupItem (not a folder)
        content_type_elem = root.find('.//ContentType')
        if content_type_elem is None or content_type_elem.text != 'lookupItem':
            return False, "Not a lookupItem"
        
        changes_made = []
        
        # Find and remove Schedule and Template elements
        info_elem = root.find('.//Info')
        if info_elem is not None:
            schedule_elem = info_elem.find('Schedule')
            if schedule_elem is not None:
                info_elem.remove(schedule_elem)
                changes_made.append("Removed <Schedule />")
            
            template_elem = info_elem.find('Template')
            if template_elem is not None:
                info_elem.remove(template_elem)
                changes_made.append("Removed <Template />")
        
        # Check if SortOrder is missing and key value is numeric
        sort_order_elem = root.find('.//Info/SortOrder')
        lookup_value_elem = root.find('.//lookupValue/Value')
        
        if sort_order_elem is None and lookup_value_elem is not None:
            key_value = lookup_value_elem.text
            if key_value and is_numeric(key_value):
                # Add SortOrder element after NodeName
                node_name_elem = info_elem.find('NodeName')
                if node_name_elem is not None:
                    sort_order_elem = ET.Element('SortOrder')
                    sort_order_elem.text = key_value
                    # Insert after NodeName
                    node_name_index = list(info_elem).index(node_name_elem)
                    info_elem.insert(node_name_index + 1, sort_order_elem)
                    changes_made.append(f"Added <SortOrder>{key_value}</SortOrder>")
        
        # If changes were made, write back to file
        if changes_made:
            # Convert back to string with proper XML declaration
            xml_str = ET.tostring(root, encoding='unicode')
            
            # Add XML declaration and format properly
            formatted_content = '<?xml version="1.0" encoding="utf-8"?>\n' + xml_str
            
            # Write back to file
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(formatted_content)
            
            return True, "; ".join(changes_made)
        else:
            return False, "No changes needed"
            
    except Exception as e:
        return False, f"Error processing file: {str(e)}"

def main():
    """Main function to process all config files."""
    base_dir = "adverse-health-events"
    updated_count = 0
    skipped_count = 0
    error_count = 0
    
    print("🔄 Fixing XML issues in lookup item files...")
    print("   - Removing <Schedule /> and <Template /> nodes")
    print("   - Adding missing <SortOrder> nodes for numeric key values")
    print()
    
    # Find all .config files
    for root_dir, dirs, files in os.walk(base_dir):
        for file in files:
            if file.endswith('.config'):
                file_path = os.path.join(root_dir, file)
                
                success, message = fix_xml_file(file_path)
                
                if success:
                    updated_count += 1
                    print(f"✅ {file_path}: {message}")
                elif "Error" in message:
                    error_count += 1
                    print(f"❌ {file_path}: {message}")
                else:
                    skipped_count += 1
                    # Only print skipped files if they're not the expected cases
                    if "Not a lookupItem" not in message and "No changes needed" not in message:
                        print(f"⏭️  {file_path}: {message}")
    
    print()
    print("📊 Summary:")
    print(f"   ✅ Updated: {updated_count} files")
    print(f"   ⏭️  Skipped: {skipped_count} files")
    print(f"   ❌ Errors: {error_count} files")
    print()
    
    if updated_count > 0:
        print("🎉 XML fixes completed successfully!")
    else:
        print("ℹ️  No files needed updating.")

if __name__ == "__main__":
    main()

