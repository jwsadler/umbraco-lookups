#!/usr/bin/env python3
"""
Fix the structure of PC1 and PC2 lookup items:
1. Move NodeName from Content level to inside Info element
2. Remove Schedule and Template elements
"""

import os
import re
from pathlib import Path

def fix_lookup_item_structure(file_path):
    """Fix the structure of a lookup item file."""
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Extract the NodeName value
    nodename_match = re.search(r'<NodeName Default="(.*?)" />', content)
    if not nodename_match:
        print(f"❌ Could not find NodeName in {file_path}")
        return False
    
    nodename_value = nodename_match.group(1)
    
    # Remove the NodeName from its current location
    content = re.sub(r'\s*<NodeName Default=".*?" />\s*', '', content)
    
    # Remove Schedule and Template elements
    content = re.sub(r'\s*<Schedule />\s*', '', content)
    content = re.sub(r'\s*<Template />\s*', '', content)
    
    # Add NodeName inside the Info section (after ModifyDate)
    content = re.sub(
        r'(\s*<ModifyDate>.*?</ModifyDate>\s*)',
        rf'\1    <NodeName Default="{nodename_value}" />\n',
        content
    )
    
    # Clean up any extra whitespace before closing Content tag
    content = re.sub(r'\n\s*\n\s*</Content>', r'\n</Content>', content)
    
    # Write the corrected content back
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True, nodename_value

def main():
    """Fix structure for all PC1 and PC2 lookup items."""
    
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
        
        print(f"🔄 Fixing structure in {len(config_files)} files in {directory.name}...")
        
        for config_file in sorted(config_files):
            try:
                result = fix_lookup_item_structure(config_file)
                if result:
                    success, nodename_value = result
                    if success:
                        print(f"✅ Fixed structure: {config_file.name}")
                        print(f"   📝 NodeName moved to Info: {nodename_value}")
                        total_fixed += 1
                    else:
                        print(f"❌ Failed: {config_file.name}")
                else:
                    print(f"❌ Failed: {config_file.name}")
            except Exception as e:
                print(f"❌ Error fixing {config_file.name}: {e}")
        
        print()
    
    print("📋 Summary:")
    print(f"✅ Fixed structure in {total_fixed} lookup item files")
    print("🔧 Changes applied:")
    print("   - NodeName moved from Content level to Info element")
    print("   - Removed Schedule and Template elements")
    
    return total_fixed

if __name__ == "__main__":
    main()

