#!/usr/bin/env python3
"""
Create PC2 lookup items with the provided text/value pairs.
"""

import os
import uuid
from datetime import datetime

def create_lookup_item_config(text, value, sort_order, parent_key="a1b2c3d4-e5f6-7890-abcd-ef1234567890"):
    """Create a lookup item config file."""
    
    # Generate a unique GUID for this lookup item
    item_key = str(uuid.uuid4())
    
    # Create alias from value (remove PC2_ prefix and make lowercase)
    alias = value.replace("PC2_", "").lower()
    
    # Create the XML content
    xml_content = f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{item_key}" Alias="{alias}" Level="5">
  <Info>
    <Parent Key="{parent_key}">pc1</Parent>
    <Path>/Home/Config/LookupItems/pc1/{alias}</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItem</ContentType>
    <CreateDate>2025-10-03T17:40:00.0000000Z</CreateDate>
    <ModifyDate>2025-10-03T17:40:00.0000000Z</ModifyDate>
  </Info>
  <Properties>
    <lookupText>
      <Value><![CDATA[{text}]]></Value>
    </lookupText>
    <lookupValue>
      <Value><![CDATA[{value}]]></Value>
    </lookupValue>
  </Properties>
  <Schedule />
  <Template />
</Content>'''
    
    return xml_content, alias, item_key

def main():
    """Main function to create all PC2 lookup items."""
    
    # PC2 lookup items data
    pc1_data = [
        ("On Dialysis", "PC2_dialysis"),
        ("Incontinent Bladder", "PC2_incontinentBladder"),
        ("Receiving palliative", "PC2_palliative"),
        ("Incontinent Bowel", "PC2_incontinentBowel"),
        ("Two or more vasopressors", "PC2_vasopressor"),
        ("Trauma patient", "PC2_trauma"),
        ("On a ventilator", "PC2_ventilator"),
        ("End of life or hospice care", "PC2_eof"),
        ("ECMO/LVAD/IABP", "PC2_ecmo")
    ]
    
    pc2_dir = "adverse-health-events/pc2"
    
    if not os.path.exists(pc2_dir):
        os.makedirs(pc2_dir)
        print(f"📁 Created directory: {pc2_dir}")
    
    print("🔄 Creating PC2 lookup items...")
    print(f"📊 Total items to create: {len(pc1_data)}")
    print()
    
    created_items = []
    
    for i, (text, value) in enumerate(pc1_data, 1):
        sort_order = 10 + i  # Start at 11, like other lookup items
        
        xml_content, alias, item_key = create_lookup_item_config(text, value, sort_order)
        
        # Create filename from text (safe filename)
        filename = text.replace(" ", " ").replace("/", "-").replace(":", "")
        config_filename = f"{filename}.config"
        config_path = os.path.join(pc2_dir, config_filename)
        
        # Write the config file
        with open(config_path, 'w', encoding='utf-8') as f:
            f.write(xml_content)
        
        created_items.append({
            'text': text,
            'value': value,
            'alias': alias,
            'key': item_key,
            'filename': config_filename,
            'sort_order': sort_order
        })
        
        print(f"✅ {i:2d}. {text}")
        print(f"    📄 File: {config_filename}")
        print(f"    🔑 Key: {item_key}")
        print(f"    🏷️  Value: {value}")
        print(f"    📝 Alias: {alias}")
        print()
    
    print("📋 Summary:")
    print(f"✅ Created {len(created_items)} PC2 lookup items")
    print(f"📁 Directory: {pc2_dir}")
    print()
    
    print("🎯 PC2 Lookup Items Created:")
    for item in created_items:
        print(f"   • {item['text']} → {item['value']}")
    
    return created_items

if __name__ == "__main__":
    main()
