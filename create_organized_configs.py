#!/usr/bin/env python3
import uuid
import os
import re

def create_safe_filename(name):
    """Create a path-safe filename by replacing problematic characters"""
    return name.replace('/', '-').replace('<', '').replace('>', '')

def create_alias(name):
    """Create a valid alias from display name"""
    return re.sub(r'[^a-z0-9]', '-', name.lower()).strip('-')

def create_config_file(category, folder, filename, display_name, lookup_value, sort_order, parent_key="9be72476-19a5-4e57-a3e6-f433bcdec4c8"):
    """Create a lookup item config file"""
    guid = str(uuid.uuid4())
    safe_filename = create_safe_filename(filename)
    alias = f"{category}-{create_alias(display_name)}"
    timestamp = "2025-10-03T08:32:47"
    
    os.makedirs(f"adverse-health-events/{folder}", exist_ok=True)
    
    content = f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{guid}" Alias="{alias}" Level="5">
  <Info>
    <Parent Key="{parent_key}">{category}</Parent>
    <Path>/Home/Config/LookupItems,{category}</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItem</ContentType>
    <CreateDate>{timestamp}</CreateDate>
    <NodeName Default="{display_name}" />
  </Info>
  <Properties>
    <lookupValue><![CDATA[{lookup_value}]]></lookupValue>
  </Properties>
</Content>'''
    
    with open(f"adverse-health-events/{folder}/{safe_filename}.config", 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"Created: {folder}/{safe_filename}.config (Display: {display_name})")

def create_container_config(category, folder, display_name, sort_order, parent_key="9be72476-19a5-4e57-a3e6-f433bcdec4c8"):
    """Create a container config file"""
    guid = str(uuid.uuid4())
    timestamp = "2025-10-03T08:28:25"
    
    os.makedirs(f"adverse-health-events/{folder}", exist_ok=True)
    
    content = f'''<?xml version="1.0" encoding="utf-8"?>
<Content Key="{guid}" Alias="{category}" Level="4">
  <Info>
    <Parent Key="{parent_key}">LookupItems</Parent>
    <Path>/Home/Config/LookupItems</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItemFolder</ContentType>
    <CreateDate>{timestamp}</CreateDate>
    <NodeName Default="{display_name}" />
  </Info>
  <Properties />
</Content>'''
    
    with open(f"adverse-health-events/{folder}/{category}.config", 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"Created container: {folder}/{category}.config")

# Create all configurations with organized structure

print("Creating organized configuration files...")

# Event Time
print("\nCreating Event Time configs...")
create_container_config("event-time", "event-time", "Event Time", 0)
create_config_file("event-time", "event-time", "7AM - 3PM", "7AM - 3PM", "1", 0)
create_config_file("event-time", "event-time", "3PM - 11PM", "3PM - 11PM", "2", 1)
create_config_file("event-time", "event-time", "11PM - 7AM", "11PM - 7AM", "3", 2)

# Injury Severity
print("\nCreating Injury Severity configs...")
create_container_config("injury-severity", "injury-severity", "Injury Severity", 1)
create_config_file("injury-severity", "injury-severity", "Death", "Death", "1", 0)
create_config_file("injury-severity", "injury-severity", "Serious Injury", "Serious Injury", "2", 1)
create_config_file("injury-severity", "injury-severity", "Potential", "Potential", "3", 2)
create_config_file("injury-severity", "injury-severity", "Error but No Reach", "Error but No Reach", "4", 3)
create_config_file("injury-severity", "injury-severity", "Reach but No Harm", "Reach but No Harm", "5", 4)
create_config_file("injury-severity", "injury-severity", "Monitoring Required", "Monitoring Required", "6", 5)
create_config_file("injury-severity", "injury-severity", "Treatment Required", "Treatment Required", "7", 6)
create_config_file("injury-severity", "injury-severity", "Longer Stay Required", "Longer Stay Required", "8", 7)

# Event Location
print("\nCreating Event Location configs...")
create_container_config("event-location", "event-location", "Event Location", 2)
create_config_file("event-location", "event-location", "Adult med-surg", "Adult med/surg", "1", 0)
create_config_file("event-location", "event-location", "Ambulatory surgery", "Ambulatory surgery", "2", 1)
create_config_file("event-location", "event-location", "Behavioral health-psych", "Behavioral health/psych", "3", 2)
create_config_file("event-location", "event-location", "Cardiac cath lab", "Cardiac cath lab", "4", 3)
create_config_file("event-location", "event-location", "Diagnostic-Labs", "Diagnostic/Labs", "5", 4)
create_config_file("event-location", "event-location", "Dialysis unit", "Dialysis unit", "6", 5)
create_config_file("event-location", "event-location", "Emergency Department", "Emergency Department", "7", 6)
create_config_file("event-location", "event-location", "Endoscopy suite", "Endoscopy suite", "8", 7)
create_config_file("event-location", "event-location", "Hallway-common area", "Hallway/common area", "9", 8)
create_config_file("event-location", "event-location", "ICU-CCU", "ICU/CCU", "10", 9)
create_config_file("event-location", "event-location", "In transit", "In transit", "11", 10)
create_config_file("event-location", "event-location", "NICU-PICU", "NICU/PICU", "12", 11)
create_config_file("event-location", "event-location", "OB-Gyn", "OB/Gyn", "13", 12)
create_config_file("event-location", "event-location", "OR", "OR", "14", 13)
create_config_file("event-location", "event-location", "Other outpatient services", "Other outpatient services", "15", 14)
create_config_file("event-location", "event-location", "PACU-Recovery", "PACU/Recovery", "16", 15)
create_config_file("event-location", "event-location", "Pediatric care", "Pediatric care", "17", 16)
create_config_file("event-location", "event-location", "Radiology", "Radiology", "18", 17)
create_config_file("event-location", "event-location", "Rehabilitation Services", "Rehabilitation Services", "19", 18)
create_config_file("event-location", "event-location", "Other", "Other", "20", 19)

# Patient Type
print("\nCreating Patient Type configs...")
create_container_config("patient-type", "patient-type", "Patient Type", 3)
create_config_file("patient-type", "patient-type", "Inpatient", "Inpatient", "1", 0)
create_config_file("patient-type", "patient-type", "Outpatient", "Outpatient", "2", 1)
create_config_file("patient-type", "patient-type", "Observation", "Observation", "3", 2)
create_config_file("patient-type", "patient-type", "Visitor", "Visitor", "4", 3)
create_config_file("patient-type", "patient-type", "Staff", "Staff", "5", 4)
create_config_file("patient-type", "patient-type", "Swing Beds", "Swing Beds", "6", 5)
create_config_file("patient-type", "patient-type", "Other", "Other", "7", 6)

# Patient Age
print("\nCreating Patient Age configs...")
create_container_config("patient-age", "patient-age", "Patient Age", 4)
create_config_file("patient-age", "patient-age", "Less than 28 days", "<28 days", "1", 0)
create_config_file("patient-age", "patient-age", "28 days-2 years", "28 days-2 years", "2", 1)
create_config_file("patient-age", "patient-age", "3-12 years", "3-12 years", "3", 2)
create_config_file("patient-age", "patient-age", "13-18 years", "13-18 years", "4", 3)
create_config_file("patient-age", "patient-age", "19-39 years", "19-39 years", "5", 4)
create_config_file("patient-age", "patient-age", "40-64 years", "40-64 years", "6", 5)
create_config_file("patient-age", "patient-age", "65-74 years", "65-74 years", "7", 6)
create_config_file("patient-age", "patient-age", "75-84 years", "75-84 years", "8", 7)
create_config_file("patient-age", "patient-age", "Greater than 85 years", ">85 years", "9", 8)

# Patient Race
print("\nCreating Patient Race configs...")
create_container_config("patient-race", "patient-race", "Patient Race", 5)
create_config_file("patient-race", "patient-race", "American Indian-Alaska Native", "American Indian/Alaska Native", "1", 0)
create_config_file("patient-race", "patient-race", "Asian", "Asian", "2", 1)
create_config_file("patient-race", "patient-race", "Black or African American", "Black or African American", "3", 2)
create_config_file("patient-race", "patient-race", "White-Caucasian", "White/Caucasian", "4", 3)
create_config_file("patient-race", "patient-race", "Multiple", "Multiple", "5", 4)
create_config_file("patient-race", "patient-race", "Unknown-Not Provided", "Unknown/Not Provided", "6", 5)
create_config_file("patient-race", "patient-race", "Other", "Other", "7", 6)

# Patient Ethnicity
print("\nCreating Patient Ethnicity configs...")
create_container_config("patient-ethnicity", "patient-ethnicity", "Patient Ethnicity", 6)
create_config_file("patient-ethnicity", "patient-ethnicity", "Hispanic or Latino", "Hispanic or Latino", "1", 0)
create_config_file("patient-ethnicity", "patient-ethnicity", "Not Hispanic or Latino", "Not Hispanic or Latino", "2", 1)
create_config_file("patient-ethnicity", "patient-ethnicity", "Unknown", "Unknown", "3", 2)

# Patient Language
print("\nCreating Patient Language configs...")
create_container_config("patient-language", "patient-language", "Patient Language", 7)
create_config_file("patient-language", "patient-language", "English", "English", "1", 0)
create_config_file("patient-language", "patient-language", "Spanish", "Spanish", "2", 1)
create_config_file("patient-language", "patient-language", "Somali", "Somali", "3", 2)
create_config_file("patient-language", "patient-language", "Hmong", "Hmong", "4", 3)
create_config_file("patient-language", "patient-language", "Karen", "Karen", "5", 4)
create_config_file("patient-language", "patient-language", "Vietnamese", "Vietnamese", "6", 5)
create_config_file("patient-language", "patient-language", "Russian", "Russian", "7", 6)
create_config_file("patient-language", "patient-language", "Oromo", "Oromo", "8", 7)
create_config_file("patient-language", "patient-language", "Arabic", "Arabic", "9", 8)
create_config_file("patient-language", "patient-language", "American Sign Language", "American Sign Language", "10", 9)
create_config_file("patient-language", "patient-language", "Amharic", "Amharic", "11", 10)
create_config_file("patient-language", "patient-language", "Khmer", "Khmer", "12", 11)
create_config_file("patient-language", "patient-language", "Nepali", "Nepali", "13", 12)
create_config_file("patient-language", "patient-language", "Other", "Other", "14", 13)

print(f"\n✅ All configurations created successfully!")
print(f"\n📁 Organized Structure:")
print(f"- Each category has its own sub-folder")
print(f"- Total of 79 configuration files")
print(f"- 8 dropdown containers (Level 4)")
print(f"- 71 lookup value items (Level 5)")
print(f"\n🔧 Strategy for '/' in names:")
print(f"- Filename: Replace '/' with '-' (e.g., 'Adult med-surg.config')")
print(f"- Display Name: Keep original '/' (e.g., 'Adult med/surg')")
print(f"- This ensures path safety while preserving correct display names")

