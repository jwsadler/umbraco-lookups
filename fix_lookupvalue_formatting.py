#!/usr/bin/env python3
"""
Fix formatting of lookupValue elements in PC1 and PC2 lookup items.
The lookupValue elements currently have inconsistent indentation.
"""

import os
import re
from pathlib import Path

def fix_lookupvalue_formatting(file_path):
    """Fix the formatting of lookupValue elements in a lookup item file."""
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Fix the lookupValue formatting - ensure proper indentation
    # Replace the malformed lookupValue block with properly formatted one
    content = re.sub(
        r'<lookupValue>\s*<Value><!\[CDATA\[(.*?)\]\]></Value>\s*</lookupValue>',
        r'    <lookupValue>\n      <Value><![CDATA[\1]]></Value>\n    </lookupValue>',
        content,
        flags=re.DOTALL
    )
    
    # Write the corrected content back
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True

def main():
    """Fix formatting for all PC1 and PC2 lookup items."""
    
    directories = [
        Path("adverse-health-events/pc1"),
        Path("adverse-health-events/pc2")
    ]
    
    total_fixed = 0
    
    for directory in directories:
        if not directory.exists():
            print(f"❌ Directory {directory} does not exist")
            continue
        
        # Get all .config files except the folder config
        config_files = [f for f in directory.glob("*.config") if f.name not in ["pc1.config", "pc2.config"]]
        
        print(f"🔄 Fixing formatting in {len(config_files)} files in {directory.name}...")
        
        for config_file in sorted(config_files):
            try:
                fix_lookupvalue_formatting(config_file)
                print(f"✅ Fixed formatting: {config_file.name}")
                total_fixed += 1
            except Exception as e:
                print(f"❌ Error fixing {config_file.name}: {e}")
        
        print()
    
    print("📋 Summary:")
    print(f"✅ Fixed formatting in {total_fixed} lookup item files")
    
    return total_fixed

if __name__ == "__main__":
    main()

