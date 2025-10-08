#!/usr/bin/env python3
"""
Fix final formatting issues in PC1 and PC2 lookup items:
1. Ensure proper indentation for NodeName in Info section
2. Ensure proper closing tags and newlines
"""

import os
import re
from pathlib import Path

def fix_final_formatting(file_path):
    """Fix final formatting issues in a lookup item file."""
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Fix NodeName indentation (should be 4 spaces like other Info elements)
    content = re.sub(r'\s*<NodeName Default="(.*?)" />', r'    <NodeName Default="\1" />', content)
    
    # Ensure proper Info closing tag
    content = re.sub(r'(\s*<NodeName Default=".*?" />)\s*</Info>', r'\1\n  </Info>', content)
    
    # Ensure proper Content closing tag
    content = re.sub(r'(\s*</Properties>)\s*</Content>', r'\1\n</Content>', content)
    
    # Clean up any multiple newlines
    content = re.sub(r'\n\n+', '\n', content)
    
    # Write the corrected content back
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True

def main():
    """Fix final formatting for all PC1 and PC2 lookup items."""
    
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
        
        print(f"🔄 Fixing final formatting in {len(config_files)} files in {directory.name}...")
        
        for config_file in sorted(config_files):
            try:
                fix_final_formatting(config_file)
                print(f"✅ Fixed formatting: {config_file.name}")
                total_fixed += 1
            except Exception as e:
                print(f"❌ Error fixing {config_file.name}: {e}")
        
        print()
    
    print("📋 Summary:")
    print(f"✅ Fixed final formatting in {total_fixed} lookup item files")
    print("🔧 Final formatting applied:")
    print("   - Proper NodeName indentation in Info section")
    print("   - Clean closing tags and newlines")
    
    return total_fixed

if __name__ == "__main__":
    main()

