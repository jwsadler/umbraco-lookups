#!/usr/bin/env python3
"""
Comprehensive fix for PC1 and PC2 lookup items formatting:
1. Ensure NodeName is properly placed in Info section with correct indentation
2. Ensure proper line breaks and formatting
"""

import os
import re
from pathlib import Path

def fix_comprehensive_formatting(file_path):
    """Comprehensively fix formatting issues in a lookup item file."""
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Fix the ModifyDate + NodeName issue (they might be on same line)
    content = re.sub(
        r'(\s*<ModifyDate>.*?</ModifyDate>)\s*<NodeName Default="(.*?)" />',
        r'\1\n    <NodeName Default="\2" />',
        content
    )
    
    # Write the corrected content back
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True

def main():
    """Fix comprehensive formatting for all PC1 and PC2 lookup items."""
    
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
        
        print(f"🔄 Fixing comprehensive formatting in {len(config_files)} files in {directory.name}...")
        
        for config_file in sorted(config_files):
            try:
                fix_comprehensive_formatting(config_file)
                print(f"✅ Fixed formatting: {config_file.name}")
                total_fixed += 1
            except Exception as e:
                print(f"❌ Error fixing {config_file.name}: {e}")
        
        print()
    
    print("📋 Summary:")
    print(f"✅ Fixed comprehensive formatting in {total_fixed} lookup item files")
    
    return total_fixed

if __name__ == "__main__":
    main()

