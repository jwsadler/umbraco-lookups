#!/usr/bin/env python3
"""
Convert ALL PreValue sources from old Content format to new PreValue format.
PC1 and PC2 are already correct, so we'll skip those.
"""

import os
import re
import uuid
from pathlib import Path

def extract_content_info(content):
    """Extract information from the old Content format."""
    
    # Extract Key
    key_match = re.search(r'<Content Key="([^"]+)"', content)
    if not key_match:
        return None
    
    content_key = key_match.group(1)
    
    # Extract Alias
    alias_match = re.search(r'Alias="([^"]+)"', content)
    if not alias_match:
        return None
    
    alias = alias_match.group(1)
    
    # Extract NodeName (display name)
    nodename_match = re.search(r'<NodeName Default="([^"]+)"', content)
    if not nodename_match:
        return None
    
    display_name = nodename_match.group(1)
    
    return {
        'content_key': content_key,
        'alias': alias,
        'display_name': display_name
    }

def create_prevalue_content(info):
    """Create the new PreValue format content."""
    
    # Generate a new PreValue Key (different from Content Key)
    prevalue_key = str(uuid.uuid4())
    
    content = f'''<?xml version="1.0" encoding="utf-8"?>
<PreValue Key="{prevalue_key}" Alias="{info['alias']}">
  <Info>
    <Name>{info['display_name']}</Name>
    <FieldPreValueSourceTypeId>de996870-c45a-11de-8a39-0800200c9a66</FieldPreValueSourceTypeId>
  </Info>
  <Settings>{{
  "RootNode": "{{\\"type\\":\\"content\\",\\"id\\":\\"{info['content_key']}\\",\\"dynamicRoot\\":{{\\"originKey\\":\\"{info['content_key']}\\",\\"originAlias\\":\\"ByKey\\"}}}}",
  "UseCurrentPage": "False",
  "DocType": "lookupItem",
  "ValueField": "lookupValue",
  "CaptionField": "",
  "ListGrandChildren": "False",
  "OrderBy": "Node order"
}}</Settings>
</PreValue>'''
    
    return content

def convert_prevalue_source(file_path):
    """Convert a single PreValue source file from Content to PreValue format."""
    
    # Skip PC1 and PC2 as they're already correct
    if file_path.name in ['pc1.config', 'pc2.config']:
        return False, "Already in correct format"
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Check if it's already in PreValue format
    if '<PreValue Key=' in content:
        return False, "Already in PreValue format"
    
    # Extract information from Content format
    info = extract_content_info(content)
    if not info:
        return False, "Could not extract information from Content format"
    
    # Create new PreValue content
    new_content = create_prevalue_content(info)
    
    # Write the new content
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(new_content)
    
    return True, info

def main():
    """Convert all PreValue sources to the new format."""
    
    prevalue_dir = Path("prevalue-sources")
    if not prevalue_dir.exists():
        print("❌ prevalue-sources directory does not exist")
        return
    
    config_files = list(prevalue_dir.glob("*.config"))
    
    print(f"🔄 Converting {len(config_files)} PreValue source files...")
    print()
    
    converted = 0
    skipped = 0
    errors = 0
    
    for config_file in sorted(config_files):
        try:
            success, result = convert_prevalue_source(config_file)
            
            if success:
                info = result
                print(f"✅ Converted: {config_file.name}")
                print(f"   📝 Name: {info['display_name']}")
                print(f"   🔑 Content Key: {info['content_key']}")
                converted += 1
            else:
                reason = result
                print(f"⏭️  Skipped: {config_file.name} - {reason}")
                skipped += 1
                
        except Exception as e:
            print(f"❌ Error converting {config_file.name}: {e}")
            errors += 1
        
        print()
    
    print("📋 Summary:")
    print(f"✅ Converted: {converted} files")
    print(f"⏭️  Skipped: {skipped} files")
    print(f"❌ Errors: {errors} files")
    print()
    print("🔧 All PreValue sources now use the correct format:")
    print("   - PreValue element with Key and Alias")
    print("   - Info section with Name and FieldPreValueSourceTypeId")
    print("   - Settings section with JSON configuration")
    print("   - RootNode ID and originKey both use the lookupItemFolder Content Key")
    
    return converted

if __name__ == "__main__":
    main()

