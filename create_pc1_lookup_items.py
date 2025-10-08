#!/usr/bin/env python3
"""
Create PC1 lookup items with the provided text/value pairs.
"""

import os
import uuid
from datetime import datetime

def create_lookup_item_config(text, value, sort_order, parent_key="b2c3d4e5-f6a7-8901-bcde-f23456789abc"):
    """Create a lookup item config file."""
    
    # Generate a unique GUID for this lookup item
    item_key = str(uuid.uuid4())
    
    # Create alias from value (remove PC1_ prefix and make lowercase)
    alias = value.replace("PC1_", "").lower()
    
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
    """Main function to create all PC1 lookup items."""
    
    # PC1 lookup items data
    pc1_data = [
        ("Morbid obesity (BMI =>40)", "PC1_obesity"),
        ("Clinically malnourished", "PC1_malnourished"),
        ("Diabetic", "PC1_diabetic"),
        ("Smoker", "PC1_smoker"),
        ("Kidney failure", "PC1_kidney"),
        ("Heart failure", "PC1_heart"),
        ("Respiratory failure", "PC1_respiratory"),
        ("Neurological/Neuromuscular condition", "PC1_neuro"),
        ("Sepsis", "PC1_sepsis"),
        ("Peripheral vascular disease", "PC1_vascular"),
        ("History of previous pressure ulcer", "PC1_previous"),
        ("Cancer", "PC1_cancer")
    ]
    
    pc1_dir = "adverse-health-events/pc1"
    
    if not os.path.exists(pc1_dir):
        os.makedirs(pc1_dir)
        print(f"📁 Created directory: {pc1_dir}")
    
    print("🔄 Creating PC1 lookup items...")
    print(f"📊 Total items to create: {len(pc1_data)}")
    print()
    
    created_items = []
    
    for i, (text, value) in enumerate(pc1_data, 1):
        sort_order = 10 + i  # Start at 11, like other lookup items
        
        xml_content, alias, item_key = create_lookup_item_config(text, value, sort_order)
        
        # Create filename from text (safe filename)
        filename = text.replace(" ", " ").replace("/", "-").replace(":", "").replace("(", "").replace(")", "").replace("=>", "gte")
        config_filename = f"{filename}.config"
        config_path = os.path.join(pc1_dir, config_filename)
        
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
    print(f"✅ Created {len(created_items)} PC1 lookup items")
    print(f"📁 Directory: {pc1_dir}")
    print()
    
    print("🎯 PC1 Lookup Items Created:")
    for item in created_items:
        print(f"   • {item['text']} → {item['value']}")
    
    return created_items

if __name__ == "__main__":
    main()

