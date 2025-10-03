#!/usr/bin/env python3
import os
import re

def fix_lookup_value_format():
    """Fix the lookup value format in all config files"""
    
    # Pattern to match the incorrect format
    incorrect_pattern = r'<lookupValue><!\[CDATA\[([^\]]+)\]\]></lookupValue>'
    # Replacement with correct format
    correct_replacement = r'<lookupValue><Value><![CDATA[\1]]></Value></lookupValue>'
    
    fixed_files = []
    total_files = 0
    
    # Walk through all config files
    for root, dirs, files in os.walk('adverse-health-events'):
        for file in files:
            if file.endswith('.config'):
                filepath = os.path.join(root, file)
                total_files += 1
                
                try:
                    # Read the file
                    with open(filepath, 'r', encoding='utf-8') as f:
                        content = f.read()
                    
                    # Check if it needs fixing
                    if '<lookupValue><![CDATA[' in content and '<lookupValue><Value>' not in content:
                        # Apply the fix
                        fixed_content = re.sub(incorrect_pattern, correct_replacement, content)
                        
                        # Write back the fixed content
                        with open(filepath, 'w', encoding='utf-8') as f:
                            f.write(fixed_content)
                        
                        fixed_files.append(filepath)
                        print(f"Fixed: {filepath}")
                
                except Exception as e:
                    print(f"Error processing {filepath}: {e}")
    
    print(f"\nSummary:")
    print(f"Total config files processed: {total_files}")
    print(f"Files fixed: {len(fixed_files)}")
    
    return fixed_files

if __name__ == "__main__":
    print("Fixing lookup value format in all configuration files...")
    fixed = fix_lookup_value_format()
    print("Done!")

