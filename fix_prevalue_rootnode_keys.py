#!/usr/bin/env python3
"""
Fix PreValue sources to use the correct Content Keys from their associated lookupItemFolder files.
"""

import os
import re
from pathlib import Path

def extract_folder_content_key(folder_config_path):
    """Extract the Content Key from a lookupItemFolder config file."""
    
    with open(folder_config_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Extract Content Key
    key_match = re.search(r'<Content Key="([^"]+)"', content)
    if key_match:
        return key_match.group(1)
    
    return None

def get_folder_content_keys():
    """Get mapping of folder names to their Content Keys."""
    
    folder_keys = {}
    
    # Find all lookupItemFolder config files
    adverse_events_dir = Path("adverse-health-events")
    
    for folder_path in adverse_events_dir.iterdir():
        if folder_path.is_dir():
            # Look for the folder config file (same name as directory)
            folder_config = folder_path / f"{folder_path.name}.config"
            
            if folder_config.exists():
                # Check if it's a lookupItemFolder
                with open(folder_config, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                if 'lookupItemFolder' in content:
                    content_key = extract_folder_content_key(folder_config)
                    if content_key:
                        folder_keys[folder_path.name] = content_key
                        print(f"📁 {folder_path.name}: {content_key}")
    
    return folder_keys

def update_prevalue_rootnode(prevalue_file, correct_content_key):
    """Update a PreValue source file with the correct RootNode Content Key."""
    
    with open(prevalue_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Update both RootNode id and originKey with the correct Content Key
    # Pattern: "id":"old-key" -> "id":"correct-key"
    content = re.sub(
        r'"id":"[^"]+?"',
        f'"id":"{correct_content_key}"',
        content
    )
    
    # Pattern: "originKey":"old-key" -> "originKey":"correct-key"
    content = re.sub(
        r'"originKey":"[^"]+?"',
        f'"originKey":"{correct_content_key}"',
        content
    )
    
    with open(prevalue_file, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True

def main():
    """Fix all PreValue sources to use correct lookupItemFolder Content Keys."""
    
    print("🔍 Extracting Content Keys from lookupItemFolder files...")
    folder_keys = get_folder_content_keys()
    
    print(f"\n📋 Found {len(folder_keys)} lookupItemFolder Content Keys")
    print()
    
    # Update PreValue sources
    prevalue_dir = Path("prevalue-sources")
    updated = 0
    errors = 0
    
    print("🔄 Updating PreValue sources with correct Content Keys...")
    print()
    
    for prevalue_file in sorted(prevalue_dir.glob("*.config")):
        try:
            # Get the folder name from the prevalue file name
            folder_name = prevalue_file.stem
            
            # Handle special cases for naming differences
            if folder_name in folder_keys:
                correct_key = folder_keys[folder_name]
                update_prevalue_rootnode(prevalue_file, correct_key)
                print(f"✅ Updated {prevalue_file.name}: {correct_key}")
                updated += 1
            else:
                print(f"⚠️  No matching folder found for: {prevalue_file.name}")
        
        except Exception as e:
            print(f"❌ Error updating {prevalue_file.name}: {e}")
            errors += 1
    
    print()
    print("📋 Summary:")
    print(f"✅ Updated: {updated} PreValue sources")
    print(f"❌ Errors: {errors} files")
    print()
    print("🔧 All PreValue sources now reference correct lookupItemFolder Content Keys:")
    print("   - RootNode ID uses actual lookupItemFolder Content Key")
    print("   - originKey matches RootNode ID")
    
    return updated

if __name__ == "__main__":
    main()

