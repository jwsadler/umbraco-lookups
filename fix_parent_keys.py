#!/usr/bin/env python3
import os
import re
import xml.etree.ElementTree as ET

def extract_folder_guid(folder_config_path):
    """Extract the GUID from a folder config file"""
    try:
        tree = ET.parse(folder_config_path)
        root = tree.getroot()
        return root.get('Key')
    except Exception as e:
        print(f"Error reading {folder_config_path}: {e}")
        return None

def update_lookup_item_parent(filepath, parent_guid, parent_name):
    """Update the parent key in a lookup item config file"""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Update the Parent Key attribute
    content = re.sub(
        r'<Parent Key="[^"]+">([^<]+)</Parent>',
        f'<Parent Key="{parent_guid}">{parent_name}</Parent>',
        content
    )
    
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

def fix_parent_relationships():
    """Fix parent-child relationships for all lookup items"""
    base_dir = 'adverse-health-events'
    fixed_count = 0
    
    # Mapping of folder names to their details
    folders = {
        'event-time': 'Event Time',
        'injury-severity': 'Injury Severity', 
        'event-location': 'Event Location',
        'patient-type': 'Patient Type',
        'patient-age': 'Patient Age',
        'patient-race': 'Patient Race',
        'patient-ethnicity': 'Patient Ethnicity',
        'patient-language': 'Patient Language'
    }
    
    for folder_name, display_name in folders.items():
        folder_path = os.path.join(base_dir, folder_name)
        folder_config_path = os.path.join(folder_path, f'{folder_name}.config')
        
        if not os.path.exists(folder_config_path):
            print(f"Warning: Folder config not found: {folder_config_path}")
            continue
            
        # Extract the folder's GUID
        folder_guid = extract_folder_guid(folder_config_path)
        if not folder_guid:
            print(f"Warning: Could not extract GUID from {folder_config_path}")
            continue
            
        print(f"Processing folder: {folder_name} (GUID: {folder_guid})")
        
        # Update all lookup items in this folder
        for file in os.listdir(folder_path):
            if file.endswith('.config') and file != f'{folder_name}.config':
                item_path = os.path.join(folder_path, file)
                update_lookup_item_parent(item_path, folder_guid, folder_name)
                fixed_count += 1
                print(f"  Fixed: {file}")
    
    print(f"\n✅ Fixed parent relationships for {fixed_count} lookup items")
    print("All lookup items now correctly reference their parent folders")

if __name__ == "__main__":
    print("Fixing parent-child relationships for lookup items...")
    fix_parent_relationships()

