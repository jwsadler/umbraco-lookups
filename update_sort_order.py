#!/usr/bin/env python3
"""
Update SortOrder to match the key value for all lookupItem files where key value is numeric.
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

def update_sort_order_in_file(file_path):
    """Update the SortOrder in a single config file to match the key value if numeric."""
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
        
        # Find the lookupValue
        lookup_value_elem = root.find('.//lookupValue/Value')
        if lookup_value_elem is None:
            return False, "No lookupValue found"
        
        # Extract the key value from CDATA
        key_value = lookup_value_elem.text
        if not key_value:
            return False, "Empty key value"
        
        # Check if key value is numeric
        if not is_numeric(key_value):
            return False, f"Key value '{key_value}' is not numeric"
        
        # Find the SortOrder element
        sort_order_elem = root.find('.//Info/SortOrder')
        if sort_order_elem is None:
            return False, "No SortOrder element found"
        
        # Get current sort order
        current_sort_order = sort_order_elem.text
        
        # Update sort order to match key value
        if current_sort_order != key_value:
            sort_order_elem.text = key_value
            
            # Write back to file with proper formatting
            # Convert back to string with proper XML declaration
            xml_str = ET.tostring(root, encoding='unicode')
            
            # Add XML declaration and format properly
            formatted_content = '<?xml version="1.0" encoding="utf-8"?>\n' + xml_str
            
            # Write back to file
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(formatted_content)
            
            return True, f"Updated SortOrder from {current_sort_order} to {key_value}"
        else:
            return False, f"SortOrder already matches key value ({key_value})"
            
    except Exception as e:
        return False, f"Error processing file: {str(e)}"

def main():
    """Main function to process all config files."""
    base_dir = "adverse-health-events"
    updated_count = 0
    skipped_count = 0
    error_count = 0
    
    print("🔄 Updating SortOrder to match key values for numeric lookup items...")
    print()
    
    # Find all .config files
    for root_dir, dirs, files in os.walk(base_dir):
        for file in files:
            if file.endswith('.config'):
                file_path = os.path.join(root_dir, file)
                
                success, message = update_sort_order_in_file(file_path)
                
                if success:
                    updated_count += 1
                    print(f"✅ {file_path}: {message}")
                elif "Error" in message:
                    error_count += 1
                    print(f"❌ {file_path}: {message}")
                else:
                    skipped_count += 1
                    # Only print skipped files if they're not the expected cases
                    if "Not a lookupItem" not in message and "not numeric" not in message:
                        print(f"⏭️  {file_path}: {message}")
    
    print()
    print("📊 Summary:")
    print(f"   ✅ Updated: {updated_count} files")
    print(f"   ⏭️  Skipped: {skipped_count} files")
    print(f"   ❌ Errors: {error_count} files")
    print()
    
    if updated_count > 0:
        print("🎉 SortOrder update completed successfully!")
    else:
        print("ℹ️  No files needed updating.")

if __name__ == "__main__":
    main()

