#!/usr/bin/env python3
import json
import os
import uuid
from datetime import datetime

def sanitize_filename(name):
    """Convert display name to path-safe filename"""
    # Replace problematic characters with safe alternatives
    safe_name = name.replace('/', '-').replace('\\', '-').replace(':', '-')
    safe_name = safe_name.replace('?', '').replace('*', '').replace('"', '')
    safe_name = safe_name.replace('<', '').replace('>', '').replace('|', '-')
    safe_name = safe_name.replace('(', '').replace(')', '')
    safe_name = safe_name.replace('[', '').replace(']', '')
    safe_name = safe_name.replace('{', '').replace('}', '')
    safe_name = safe_name.replace('&', 'and').replace('%', 'percent')
    safe_name = safe_name.replace('#', 'num').replace('@', 'at')
    safe_name = safe_name.replace('!', '').replace('$', '')
    safe_name = safe_name.replace('^', '').replace('=', '')
    safe_name = safe_name.replace('+', 'plus').replace('~', '')
    safe_name = safe_name.replace('`', '').replace("'", '')
    safe_name = safe_name.replace(';', '').replace(',', '')
    safe_name = safe_name.replace('.', '').replace(' ', ' ')
    
    # Clean up multiple spaces and trim
    while '  ' in safe_name:
        safe_name = safe_name.replace('  ', ' ')
    safe_name = safe_name.strip()
    
    return safe_name

def generate_guid():
    """Generate a new GUID"""
    return str(uuid.uuid4())

def create_alias(name, category_prefix=""):
    """Create a safe alias for Umbraco"""
    alias = name.lower()
    alias = alias.replace('/', '-').replace('\\', '-').replace(' ', '-')
    alias = alias.replace('(', '').replace(')', '').replace('[', '').replace(']', '')
    alias = alias.replace('{', '').replace('}', '').replace(':', '-')
    alias = alias.replace('?', '').replace('*', '').replace('"', '')
    alias = alias.replace('<', '').replace('>', '').replace('|', '-')
    alias = alias.replace('&', 'and').replace('%', 'percent')
    alias = alias.replace('#', 'num').replace('@', 'at')
    alias = alias.replace('!', '').replace('$', '').replace('^', '')
    alias = alias.replace('=', '').replace('+', 'plus').replace('~', '')
    alias = alias.replace('`', '').replace("'", '').replace(';', '')
    alias = alias.replace(',', '').replace('.', '')
    
    # Clean up multiple dashes and trim
    while '--' in alias:
        alias = alias.replace('--', '-')
    alias = alias.strip('-')
    
    if category_prefix:
        alias = f"{category_prefix}-{alias}"
    
    return alias

def create_config_content(key, alias, display_name, parent_key, parent_name, path, level, sort_order, lookup_value):
    """Create the XML content for a configuration file"""
    timestamp = "2025-10-03T08:32:47"
    
    return f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{key}" Alias="{alias}" Level="{level}">
  <Info>
    <Parent Key="{parent_key}">{parent_name}</Parent>
    <Path>{path}</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItem</ContentType>
    <CreateDate>{timestamp}</CreateDate>
    <NodeName Default="{display_name}" />
    <SortOrder>{sort_order}</SortOrder>
    <Published Default="false" />
    <Schedule />
    <Template />
  </Info>
  <Properties>
    <lookupValue><![CDATA[{lookup_value}]]></lookupValue>
  </Properties>
</Content>'''

def create_folder_config_content(key, alias, display_name, parent_key, parent_name, path, level, sort_order):
    """Create the XML content for a folder configuration file"""
    timestamp = "2025-10-03T08:28:25"
    
    return f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{key}" Alias="{alias}" Level="{level}">
  <Info>
    <Parent Key="{parent_key}">{parent_name}</Parent>
    <Path>{path}</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItemFolder</ContentType>
    <CreateDate>{timestamp}</CreateDate>
    <NodeName Default="{display_name}" />
    <SortOrder>{sort_order}</SortOrder>
    <Published Default="false" />
    <Schedule />
    <Template />
  </Info>
  <Properties />
</Content>'''

def process_json_data():
    """Process the JSON data and create configuration files"""
    
    # Root parent information
    root_parent_key = "9be72476-19a5-4e57-a3e6-f433bcdec4c8"
    root_parent_name = "LookupItems"
    base_path = "/Home/Config/LookupItems"
    
    # Track existing categories to avoid duplicates
    existing_categories = {
        'injury-severity', 'event-time', 'event-location', 
        'patient-type', 'patient-age', 'patient-race', 
        'patient-ethnicity', 'patient-language'
    }
    
    # Track all filenames to ensure uniqueness
    all_filenames = set()
    
    # Collect all new dropdown and multiselect questions
    new_categories = {}
    
    # Define the new categories from the JSON data
    new_dropdown_data = {
        "error-type": {
            "display_name": "Error Type",
            "options": [
                {"key": "1", "value": "Omission"},
                {"key": "2", "value": "Wrong Patient"},
                {"key": "3", "value": "Wrong Drug"},
                {"key": "4", "value": "Wrong Route"},
                {"key": "5", "value": "Wrong Time"},
                {"key": "6", "value": "Wrong Dose"},
                {"key": "7", "value": "Other"}
            ]
        },
        "process-stage": {
            "display_name": "Process Stage",
            "options": [
                {"key": "1", "value": "Prescribing"},
                {"key": "2", "value": "Dispensing"},
                {"key": "3", "value": "Administering"},
                {"key": "4", "value": "Transcribing"},
                {"key": "5", "value": "Monitoring"},
                {"key": "6", "value": "Other"}
            ]
        },
        "harm-type": {
            "display_name": "Harm Type",
            "options": [
                {"key": "1", "value": "Hypoglycemia/Hyperglycemia"},
                {"key": "2", "value": "Oversedation or respiratory depression"},
                {"key": "3", "value": "Hemorrhage"},
                {"key": "4", "value": "Abnormal heart rate or blood pressure"},
                {"key": "5", "value": "Allergic reaction"},
                {"key": "6", "value": "Other"}
            ]
        },
        "pressure-ulcer-stage": {
            "display_name": "Pressure Ulcer Stage",
            "options": [
                {"key": "1", "value": "Unstageable"},
                {"key": "2", "value": "Stage 3"},
                {"key": "3", "value": "Stage 4"}
            ]
        },
        "body-site": {
            "display_name": "Body Site",
            "options": [
                {"key": "12", "value": "Buttocks"},
                {"key": "18", "value": "Coccyx"},
                {"key": "22", "value": "Coccyx and Sacrum"},
                {"key": "23", "value": "Ear"},
                {"key": "24", "value": "Face"},
                {"key": "28", "value": "Heel/Ankle/Foot"},
                {"key": "55", "value": "Occiput"},
                {"key": "56", "value": "Other"},
                {"key": "73", "value": "Sacrum"}
            ]
        },
        "device-category": {
            "display_name": "Device Category",
            "options": [
                {"key": "65", "value": "Cervical Collar/JTO"},
                {"key": "66", "value": "Respiratory Device"},
                {"key": "67", "value": "TLSO/Halo/Trunk Brace"},
                {"key": "68", "value": "Extremity splint/Cast/AFO"},
                {"key": "69", "value": "Anti-embolism (e.g., stockings, SCD)"},
                {"key": "70", "value": "Wrap/Dressing"},
                {"key": "71", "value": "Enteric tubes (e.g., NG, J-tube, G-tube)"},
                {"key": "72", "value": "Other"},
                {"key": "73", "value": "Urinary/fecal management system"},
                {"key": "74", "value": "Vascular Access"},
                {"key": "76", "value": "Compression Wrap (e.g., ace grip, stockings, lymphedema wraps)"},
                {"key": "77", "value": "Stabilizers (e.g., ETAD, Bridal, STAT lock)"},
                {"key": "78", "value": "Lines (e.g., ECMO, PIV, Art line)"}
            ]
        },
        "stage-when-first-identified": {
            "display_name": "Stage When First Identified",
            "options": [
                {"key": "1", "value": "DTPI"},
                {"key": "2", "value": "Stage I (1)"},
                {"key": "3", "value": "Stage II (2)"},
                {"key": "4", "value": "Stage III (3)"},
                {"key": "5", "value": "Stage IV (4)"},
                {"key": "6", "value": "Unstageable"},
                {"key": "7", "value": "Muscosal"}
            ]
        },
        "fall-location": {
            "display_name": "Fall Location",
            "options": [
                {"key": "5", "value": "Between bed and bathroom"},
                {"key": "16", "value": "From Bed"},
                {"key": "17", "value": "From bedside commode"},
                {"key": "18", "value": "From cart or gurney"},
                {"key": "19", "value": "From chair"},
                {"key": "20", "value": "From toilet"},
                {"key": "21", "value": "Hallway"},
                {"key": "46", "value": "Therapy/radiation/other treatment"},
                {"key": "34", "value": "Other"}
            ]
        },
        "fall-injury": {
            "display_name": "Fall Injury",
            "options": [
                {"key": "1", "value": "Head Bleed"},
                {"key": "3", "value": "Hip fracture"},
                {"key": "4", "value": "Pelvic fracture"},
                {"key": "7", "value": "Other (please describe)"},
                {"key": "8", "value": "Femur fracture"},
                {"key": "9", "value": "Dehiscence of surgical wound"},
                {"key": "10", "value": "Death"}
            ]
        },
        "fall-prevention-measures": {
            "display_name": "Fall Prevention Measures",
            "options": [
                {"key": "1", "value": "Patient education and reminders to call for help when getting up/moving"},
                {"key": "2", "value": "Low bed"},
                {"key": "3", "value": "Floor mat"},
                {"key": "4", "value": "Within Arms Reach"},
                {"key": "5", "value": "Transfer or lift equipment"},
                {"key": "6", "value": "Assistive device"},
                {"key": "7", "value": "Scheduled toileting"},
                {"key": "8", "value": "Rounding"},
                {"key": "9", "value": "Orthostatic blood pressures"},
                {"key": "10", "value": "Appropriate footwear"},
                {"key": "11", "value": "Alarm"},
                {"key": "12", "value": "Use of video monitoring"},
                {"key": "13", "value": "Use of 1:1 care attendant"},
                {"key": "14", "value": "Pharmacy consult"},
                {"key": "15", "value": "Physical therapy or occupational therapy consult"},
                {"key": "16", "value": "Universal Fall Prevention Measures (i.e. personal items within reach, clutter-free path, bed in low position, bed and wheelchair brakes locked, etc.)"},
                {"key": "19", "value": "Hip protectors"},
                {"key": "17", "value": "Other types of positioning"},
                {"key": "18", "value": "Other prevention measure"}
            ]
        },
        "toileting-fall-location": {
            "display_name": "Toileting Fall Location",
            "options": [
                {"key": "1", "value": "Bathroom"},
                {"key": "2", "value": "Commode"},
                {"key": "3", "value": "Bed/chair: urinal"},
                {"key": "4", "value": "Walking to/from the bathroom"},
                {"key": "5", "value": "Other: please describe"}
            ]
        },
        "underlying-conditions": {
            "display_name": "Underlying Conditions",
            "options": [
                {"key": "1", "value": "Dementia"},
                {"key": "2", "value": "Delirium"},
                {"key": "8", "value": "Mental health diagnosis"},
                {"key": "11", "value": "Other cognitive impairment due to other diagnosis (i.e. stroke, memory, attention, judgement, impulsivity, deficit awareness, etc.)"}
            ]
        },
        "specimen-loss-location": {
            "display_name": "Specimen Loss Location",
            "options": [
                {"key": "18", "value": "Internal transport"},
                {"key": "19", "value": "External transport"},
                {"key": "20", "value": "Obtaining specimen/collection"},
                {"key": "21", "value": "Processing specimen"},
                {"key": "22", "value": "Storage of specimen"}
            ]
        },
        "specimen-contributing-factors": {
            "display_name": "Specimen Contributing Factors",
            "options": [
                {"key": "1", "value": "Labeling (e.g., incorrect label applied)"},
                {"key": "2", "value": "Label error (e.g., errors on physical label)"},
                {"key": "3", "value": "Ordering (e.g., wrong order, incorrect test selected)"},
                {"key": "4", "value": "Transport"},
                {"key": "5", "value": "Storage (on and off the sterile field)"},
                {"key": "6", "value": "Container issue (e.g., wrong size, not sealed, outer bag not labeled)"},
                {"key": "7", "value": "Forms"},
                {"key": "8", "value": "Incorrect medium"}
            ]
        },
        "specimen-loss-reason": {
            "display_name": "Specimen Loss Reason",
            "options": [
                {"key": "1", "value": "Communication"},
                {"key": "2", "value": "Human factors"},
                {"key": "3", "value": "Process failure"},
                {"key": "4", "value": "Production pressure"},
                {"key": "5", "value": "Knowledge deficit"}
            ]
        },
        "communication-breakdown-point": {
            "display_name": "Communication Breakdown Point",
            "options": [
                {"key": "54", "value": "provider to provider"},
                {"key": "55", "value": "provider to patient"},
                {"key": "56", "value": "provider to authorized representative"},
                {"key": "57", "value": "Other"}
            ]
        },
        "communication-failure-timing": {
            "display_name": "Communication Failure Timing",
            "options": [
                {"key": "61", "value": "Transfer of facility"},
                {"key": "62", "value": "Transition between hospital/ASC and outpatient"},
                {"key": "63", "value": "In outpatient setting only"},
                {"key": "64", "value": "In hospital/ASC only"}
            ]
        },
        "procedure-category": {
            "display_name": "Procedure Category",
            "options": [
                {"key": "1", "value": "Surgical Procedure"},
                {"key": "2", "value": "Radiology"},
                {"key": "3", "value": "Anesthesia"},
                {"key": "4", "value": "Bedside Procedure"},
                {"key": "5", "value": "Cath Lab"},
                {"key": "6", "value": "Radiation Therapy"},
                {"key": "7", "value": "Other"}
            ]
        },
        "procedure-type": {
            "display_name": "Procedure Type",
            "options": [
                {"key": "1", "value": "Cardiac"},
                {"key": "2", "value": "Vascular"},
                {"key": "3", "value": "Ortho (excludes spine)"},
                {"key": "4", "value": "ENT"},
                {"key": "5", "value": "GYN"},
                {"key": "6", "value": "Urology"},
                {"key": "7", "value": "General"},
                {"key": "8", "value": "Plastics"},
                {"key": "9", "value": "Neuro (excludes spine)"},
                {"key": "10", "value": "Podiatry"},
                {"key": "11", "value": "Dental"},
                {"key": "12", "value": "Ophthalmology"},
                {"key": "13", "value": "Spine (includes ortho, neuro and injections)"},
                {"key": "14", "value": "Thoracic"},
                {"key": "15", "value": "Other"}
            ]
        },
        "retained-object-type": {
            "display_name": "Retained Object Type",
            "options": [
                {"key": "1", "value": "Soft Good"},
                {"key": "2", "value": "Whole Device or Whole Instrument"},
                {"key": "3", "value": "Whole Sharp/Needle"},
                {"key": "4", "value": "Unretrieved Device Fragment"},
                {"key": "5", "value": "Small Miscellaneous Items"}
            ]
        },
        "soft-good-type": {
            "display_name": "Soft Good Type",
            "options": [
                {"key": "1", "value": "Surgical sponge"},
                {"key": "2", "value": "Surgical towel"},
                {"key": "3", "value": "Dressing sponge"}
            ]
        },
        "type-of-harm": {
            "display_name": "Type of Harm",
            "options": [
                {"key": "1", "value": "Suicide"},
                {"key": "2", "value": "Attempted Suicide"},
                {"key": "3", "value": "Self Harm"},
                {"key": "4", "value": "Other"}
            ]
        },
        "root-cause-category": {
            "display_name": "Root Cause Category",
            "options": [
                {"key": "1", "value": "Communication / Information"},
                {"key": "2", "value": "Training / Education"},
                {"key": "3", "value": "Human Factors"},
                {"key": "4", "value": "Physical Environment & Products / Equipment"},
                {"key": "5", "value": "Rules / Policies / Procedures"},
                {"key": "6", "value": "Organizational Culture"},
                {"key": "7", "value": "Electronic Communication / Information"},
                {"key": "8", "value": "Other Category"}
            ]
        },
        "communication-information-subcategory": {
            "display_name": "Communication Information Subcategory",
            "options": [
                {"key": "16", "value": "Information not communicated to appropriate person/team"},
                {"key": "17", "value": "Information not communicated using structured communication process (e.g., SBAR, readback, ticket to ride)"},
                {"key": "18", "value": "Structured communication process not used appropriately (e.g., information unclear, incomplete, inaccurate)"},
                {"key": "19", "value": "Information not readily available or accessible (test results, case notes)"},
                {"key": "20", "value": "Information was not acted upon"},
                {"key": "21", "value": "Other"}
            ]
        },
        "training-education-subcategory": {
            "display_name": "Training Education Subcategory",
            "options": [
                {"key": "29", "value": "Staff training not conducted"},
                {"key": "30", "value": "Staff training inadequate/incomplete"},
                {"key": "31", "value": "Staff training not up-to-date with current standards (e.g., annual training and competencies)"},
                {"key": "32", "value": "Staff not qualified/competent"},
                {"key": "33", "value": "Adequate supervision/support not provided"},
                {"key": "34", "value": "Patient/family education not conducted"},
                {"key": "35", "value": "Patient/family education inadequate/incomplete"},
                {"key": "36", "value": "Other"}
            ]
        },
        "human-factors-subcategory": {
            "display_name": "Human Factors Subcategory",
            "options": [
                {"key": "37", "value": "Fatigue"},
                {"key": "38", "value": "Staffing (e.g., number of staff, mix of staff)"},
                {"key": "39", "value": "Interruptions/distractions"},
                {"key": "40", "value": "Situational Awareness/inattention"},
                {"key": "41", "value": "Other"}
            ]
        },
        "physical-environment-subcategory": {
            "display_name": "Physical Environment Subcategory",
            "options": [
                {"key": "1", "value": "Design of physical surroundings (e.g., size, layout, location)"},
                {"key": "2", "value": "Physical environment stressors (e.g., temperature, lighting, noise, clutter"},
                {"key": "3", "value": "Product/Equipment Function"},
                {"key": "4", "value": "Product/Equipment Design"},
                {"key": "5", "value": "Product/Equipment Maintenance"},
                {"key": "6", "value": "Product/Equipment Availability"},
                {"key": "7", "value": "Other"}
            ]
        },
        "rules-policies-procedures-subcategory": {
            "display_name": "Rules Policies Procedures Subcategory",
            "options": [
                {"key": "42", "value": "Policy/process not effective (e.g., out-to-date, doesn't address specific system breakdown)"},
                {"key": "43", "value": "Policy/process not in place in organization or unit"},
                {"key": "44", "value": "Policy/process not clear (e.g., roles not well defined)"},
                {"key": "45", "value": "Policies/processes not readily available or known to staff"},
                {"key": "46", "value": "Policy/process in place but not followed (e.g., drift in practice, time constraints, not workable)"},
                {"key": "47", "value": "Policy/process unfamiliar to staff due to rarity"},
                {"key": "48", "value": "Other"}
            ]
        },
        "organizational-culture-subcategory": {
            "display_name": "Organizational Culture Subcategory",
            "options": [
                {"key": "8", "value": "Team dynamics (e.g. hierarchy, deference to expertise, collaboration)"},
                {"key": "9", "value": "Culture of productivity over safety (e.g., turnover of OR cases)"},
                {"key": "10", "value": "Lack of support for staff or patients speaking up about potential risk"},
                {"key": "11", "value": "Lack of clear expectations for following policies"},
                {"key": "12", "value": "Organizational tolerance for drift in practice"},
                {"key": "13", "value": "Organizational tolerance for disruptive or reckless behavior"},
                {"key": "14", "value": "Availability and prioritization of resources to address safety issue"},
                {"key": "15", "value": "Other"}
            ]
        },
        "electronic-communication-subcategory": {
            "display_name": "Electronic Communication Subcategory",
            "options": [
                {"key": "22", "value": "Drop down/field selection error"},
                {"key": "23", "value": "Information not readily available or accessible (e.g., separate module or screen, hidden field)"},
                {"key": "24", "value": "Inability of EHR modules to interface/transfer information"},
                {"key": "25", "value": "Data entry error"},
                {"key": "26", "value": "Double-checks or alerts missing or ineffective (e.g., contraindications, allergy alerts, verifications/confirmations)"},
                {"key": "27", "value": "Information was not acted upon"},
                {"key": "28", "value": "Other"}
            ]
        },
        "cap-methodology": {
            "display_name": "CAP Methodology",
            "options": [
                {"key": "1", "value": "Observational Audits"},
                {"key": "2", "value": "Chart Audit"},
                {"key": "3", "value": "Survey"},
                {"key": "4", "value": "Competency Testing"},
                {"key": "5", "value": "Physical Plant Changes"},
                {"key": "6", "value": "Equipment/Supplies"},
                {"key": "7", "value": "Other"}
            ]
        },
        "corrective-action-intervention": {
            "display_name": "Corrective Action Intervention",
            "options": [
                {"key": "1", "value": "Strong Interventions"},
                {"key": "2", "value": "Intermediate interventions"},
                {"key": "3", "value": "Weak interventions (if used alone)"}
            ]
        }
    }
    
    # Create directories and files for each new category
    folder_sort_order = 100  # Start after existing categories
    
    for category_key, category_data in new_dropdown_data.items():
        if category_key in existing_categories:
            print(f"Skipping existing category: {category_key}")
            continue
            
        print(f"Processing new category: {category_key}")
        
        # Create category folder
        folder_guid = generate_guid()
        folder_alias = category_key
        folder_display_name = category_data["display_name"]
        folder_path = f"{base_path}/{category_key}"
        
        # Create directory
        category_dir = f"adverse-health-events/{category_key}"
        os.makedirs(category_dir, exist_ok=True)
        
        # Create folder config file
        folder_config = create_folder_config_content(
            folder_guid, folder_alias, folder_display_name,
            root_parent_key, root_parent_name, folder_path, 4, folder_sort_order
        )
        
        folder_filename = f"{category_key}.config"
        folder_filepath = f"{category_dir}/{folder_filename}"
        
        with open(folder_filepath, 'w', encoding='utf-8') as f:
            f.write(folder_config)
        
        print(f"Created folder: {folder_filepath}")
        
        # Create lookup items
        for i, option in enumerate(category_data["options"]):
            display_name = option["value"]
            safe_filename = sanitize_filename(display_name)
            
            # Ensure unique filename
            base_filename = safe_filename
            counter = 1
            while safe_filename in all_filenames:
                safe_filename = f"{base_filename}-{counter}"
                counter += 1
            all_filenames.add(safe_filename)
            
            item_guid = generate_guid()
            item_alias = create_alias(display_name, category_key)
            item_path = f"{folder_path}/{category_key}"
            
            item_config = create_config_content(
                item_guid, item_alias, display_name,
                folder_guid, category_key, item_path, 5, i, option["key"]
            )
            
            item_filename = f"{safe_filename}.config"
            item_filepath = f"{category_dir}/{item_filename}"
            
            with open(item_filepath, 'w', encoding='utf-8') as f:
                f.write(item_config)
            
            print(f"Created item: {item_filepath}")
        
        folder_sort_order += 1
    
    print(f"\nProcessed {len(new_dropdown_data)} new categories")
    print(f"Total unique filenames: {len(all_filenames)}")

if __name__ == "__main__":
    print("Processing all remaining dropdown and multiselect values...")
    process_json_data()
    print("Done!")

