#!/usr/bin/env python3
import os
import re

def fix_path_in_file(filepath):
    """Fix the Path XML node to use forward slashes instead of commas"""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Fix the path format - replace comma with forward slash
    # Pattern: <Path>/Home/Config/LookupItems,category</Path>
    # Replace with: <Path>/Home/Config/LookupItems/category</Path>
    fixed_content = re.sub(
        r'<Path>/Home/Config/LookupItems,([^<]+)</Path>',
        r'<Path>/Home/Config/LookupItems/\1</Path>',
        content
    )
    
    if content != fixed_content:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(fixed_content)
        print(f"Fixed: {filepath}")
        return True
    return False

def fix_all_config_files():
    """Fix all .config files in the adverse-health-events directory"""
    fixed_count = 0
    
    for root, dirs, files in os.walk('adverse-health-events'):
        for file in files:
            if file.endswith('.config'):
                filepath = os.path.join(root, file)
                if fix_path_in_file(filepath):
                    fixed_count += 1
    
    print(f"\n✅ Fixed {fixed_count} configuration files")
    print("All Path XML nodes now use forward slashes instead of commas")

if __name__ == "__main__":
    print("Fixing Path XML nodes in all configuration files...")
    fix_all_config_files()

