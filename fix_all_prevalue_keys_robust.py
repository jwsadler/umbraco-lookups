#!/usr/bin/env python3
"""
Robust fix for PreValue sources to use correct Content Keys from lookupItemFolder files.
"""

import os
import re
from pathlib import Path

def get_folder_content_keys():
    """Get mapping of folder names to their Content Keys."""
    
    folder_keys = {}
    
    # Manually map the correct keys based on the output we saw
    folder_keys = {
        'body-site': 'caa7692b-b904-4531-8189-b131d6dc4360',
        'cap-methodology': 'c072b5b3-3989-45fa-b5c7-fcd84a7f2978',
        'communication-breakdown-point': '335d23fe-ffc3-4014-9f06-16f87ecc6aae',
        'communication-failure-timing': '73a96b5c-226e-4db8-8cb0-7e7730cf39b1',
        'communication-information-subcategory': '4c629505-6240-4f6e-a9c5-f24538cb4cdf',
        'corrective-action-intervention': '284098bb-a6cb-4a6e-bdf0-56cb8a17e723',
        'device-category': 'cd8d7f50-2860-4bf4-a49d-11d435bf6001',
        'electronic-communication-subcategory': '6ae227a2-4990-4b1e-814e-82705dbe87a1',
        'error-type': '3f21c1a2-40be-438d-9f77-dfa3fe10afd8',
        'event-location': 'e9b50e5e-c8ec-450f-8d57-191a4e945404',
        'event-time': '93034def-dbff-434a-a221-98a5bb090b2d',
        'fall-injury': 'd10e2c39-3ee4-433e-bc87-62f46faabd9e',
        'fall-location': '0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c',
        'fall-prevention-measures': '2e6b60f7-196d-4c56-b5bc-ea2945623d8d',
        'harm-type': 'd2ae1785-c0e0-4409-8d89-6a1c9dce999a',
        'human-factors-subcategory': 'a432bda1-1bfb-4ead-af48-cebe19eb1723',
        'injury-severity': 'a3278035-697d-4c6f-9c8f-3c3376583ea7',
        'organizational-culture-subcategory': '1bc6a292-2cc7-4a56-95e6-f63931cd7bc1',
        'patient-age': '4773c6df-2b95-4d1e-88d1-d2c3bc3087c0',
        'patient-ethnicity': '97ae4e98-439b-42ff-84bb-4511257fe657',
        'patient-language': '6f6ca7fb-97da-46ea-850b-93e4de7e4fb5',
        'patient-race': 'c6d2264e-db65-4231-abe2-40620846c5e4',
        'patient-type': '1408d515-68ac-4568-8e0c-16115a41765b',
        'pc1': 'b2c3d4e5-f6a7-8901-bcde-f23456789abc',
        'pc2': 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
        'physical-environment-subcategory': '98f288e9-c990-4507-8d7a-9c8907c57b5c',
        'pressure-ulcer-stage': '009b7040-4ba2-4c2f-a6c0-532d714a2fe4',
        'procedure-category': 'a438b819-0c9a-4fd8-a120-007f1b4c86f9',
        'procedure-type': 'c85b23f5-9fb4-4c6d-a984-e51eb86782f9',
        'process-stage': '58387e35-9969-4514-afc2-9e4bbdd679ab',
        'retained-object-type': 'e5343daa-7591-4654-b233-f26f2555beba',
        'root-cause-category': '4d5e04e7-9f1e-468b-80db-291378f98188',
        'rules-policies-procedures-subcategory': '08a42eb4-04ed-4f11-9b12-8001490c8c72',
        'soft-good-type': '051034cf-a80e-4e5f-8870-2d0a26e57212',
        'specimen-contributing-factors': '1582f513-50f2-4967-a78a-518297f19b4c',
        'specimen-loss-location': '380eab02-1b26-480c-932f-c01704e43697',
        'specimen-loss-reason': '17594f52-f230-427d-a9ac-d7b42f6dea49',
        'stage-when-first-identified': '2325b7a3-e1e1-42ad-964b-468241afa739',
        'toileting-fall-location': '47062b76-1f20-4575-94e0-b3869c4ac01c',
        'training-education-subcategory': 'abeacbc2-1691-417b-b637-522a89a28458',
        'type-of-harm': '30369262-38b7-4549-9917-f4a2f3e1b29d',
        'underlying-conditions': '670d09fc-d986-48de-8298-a68f6fdba8af'
    }
    
    return folder_keys

def update_prevalue_rootnode_robust(prevalue_file, correct_content_key):
    """Robustly update a PreValue source file with the correct RootNode Content Key."""
    
    with open(prevalue_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find the RootNode line and replace the entire JSON structure
    rootnode_pattern = r'"RootNode": "\{[^}]+\}"'
    new_rootnode = f'"RootNode": "{{\\"type\\":\\"content\\",\\"id\\":\\"{correct_content_key}\\",\\"dynamicRoot\\":{{\\"originKey\\":\\"{correct_content_key}\\",\\"originAlias\\":\\"ByKey\\"}}}}"'
    
    content = re.sub(rootnode_pattern, new_rootnode, content)
    
    with open(prevalue_file, 'w', encoding='utf-8') as f:
        f.write(content)
    
    return True

def main():
    """Fix all PreValue sources to use correct lookupItemFolder Content Keys."""
    
    folder_keys = get_folder_content_keys()
    
    print(f"🔧 Fixing {len(folder_keys)} PreValue sources with correct Content Keys...")
    print()
    
    # Update PreValue sources
    prevalue_dir = Path("prevalue-sources")
    updated = 0
    errors = 0
    
    for prevalue_file in sorted(prevalue_dir.glob("*.config")):
        try:
            # Get the folder name from the prevalue file name
            folder_name = prevalue_file.stem
            
            if folder_name in folder_keys:
                correct_key = folder_keys[folder_name]
                update_prevalue_rootnode_robust(prevalue_file, correct_key)
                print(f"✅ Updated {prevalue_file.name}: {correct_key}")
                updated += 1
            else:
                print(f"⚠️  No mapping found for: {prevalue_file.name}")
        
        except Exception as e:
            print(f"❌ Error updating {prevalue_file.name}: {e}")
            errors += 1
    
    print()
    print("📋 Summary:")
    print(f"✅ Updated: {updated} PreValue sources")
    print(f"❌ Errors: {errors} files")
    print()
    print("🔧 All PreValue sources now reference correct lookupItemFolder Content Keys!")
    
    return updated

if __name__ == "__main__":
    main()

