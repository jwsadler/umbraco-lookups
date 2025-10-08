#!/usr/bin/env python3
"""
Fix PC1 lookup items to have correct structure:
- Add NodeName property
- Remove lookupText from Properties (keep only lookupValue)
"""

import os
import re
from pathlib import Path

def fix_lookup_item(file_path):
    """Fix a single lookup item file."""
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Extract the lookupText value to use as NodeName
    lookup_text_match = re.search(r'<lookupText>\s*<Value><!\[CDATA\[(.*?)\]\]></Value>\s*</lookupText>', content, re.DOTALL)
    if not lookup_text_match:
        print(f"❌ Could not find lookupText in {file_path}")
        return False
    
    node_name = lookup_text_match.group(1).strip()
    
    # Remove the entire lookupText section from Properties
    content = re.sub(r'\s*<lookupText>.*?</lookupText>\s*', '\n', content, flags=re.DOTALL)
    
    # Add NodeName before closing </Content> tag
    content = re.sub(r'(\s*)</Content>', rf'\1  <NodeName Default="{node_name}" />\n\1</Content>', content)
    
    # Write the corrected content back
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True, node_name

def main():
    """Fix all PC1 lookup items."""
    
    pc1_dir = Path("adverse-health-events/pc1")
    
    if not pc1_dir.exists():
        print(f"❌ Directory {pc1_dir} does not exist")
        return
    
    # Get all .config files except the folder config
    config_files = [f for f in pc1_dir.glob("*.config") if f.name != "pc1.config"]
    
    print(f"🔄 Fixing {len(config_files)} PC1 lookup items...")
    print()
    
    fixed_count = 0
    
    for config_file in sorted(config_files):
        try:
            result = fix_lookup_item(config_file)
            if result:
                success, node_name = result
                if success:
                    print(f"✅ Fixed: {config_file.name}")
                    print(f"   📝 NodeName: {node_name}")
                    fixed_count += 1
                else:
                    print(f"❌ Failed: {config_file.name}")
            else:
                print(f"❌ Failed: {config_file.name}")
        except Exception as e:
            print(f"❌ Error fixing {config_file.name}: {e}")
        
        print()
    
    print("📋 Summary:")
    print(f"✅ Fixed {fixed_count} PC1 lookup items")
    print(f"📁 Directory: {pc1_dir}")
    
    return fixed_count

if __name__ == "__main__":
    main()

