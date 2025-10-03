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
    
    # JSON data from the user
    json_data = {
        "name": "Adverse Health Events",
        "sections": [
            {
                "name": "Event Details",
                "order": 1,
                "questions": [
                    {
                        "uuid": "11ba615b-03fb-459b-b269-24b6d8dd8fb2",
                        "question_text": "Injury Severity",
                        "proposed_alias": "injurySeverity",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "Death"},
                            {"key": "2", "value": "Serious Injury"},
                            {"key": "3", "value": "Potential"},
                            {"key": "4", "value": "Error but No Reach"},
                            {"key": "5", "value": "Reach but No Harm"},
                            {"key": "6", "value": "Monitoring Required"},
                            {"key": "7", "value": "Treatment Required"},
                            {"key": "8", "value": "Longer Stay Required"}
                        ]
                    }
                ]
            },
            {
                "name": "Event Summary", 
                "order": 2,
                "questions": [
                    {
                        "uuid": "e77f37b9-d7d3-425d-b469-a385b21c8149",
                        "question_text": "Event Time",
                        "proposed_alias": "eventTime",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "7AM-3PM"},
                            {"key": "2", "value": "3PM-11PM"},
                            {"key": "3", "value": "11PM-7AM"}
                        ]
                    },
                    {
                        "uuid": "aa0f64e3-e2e5-47fc-a412-ed5c20ca9b55",
                        "question_text": "Event Location",
                        "proposed_alias": "eventLocation",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "Adult med/surg"},
                            {"key": "2", "value": "Ambulatory surgery"},
                            {"key": "3", "value": "Behavioral health/psych (inpatient)"},
                            {"key": "4", "value": "Cardiac cath lab"},
                            {"key": "5", "value": "Diagnostic/Labs"},
                            {"key": "6", "value": "Dialysis unit"},
                            {"key": "7", "value": "Emergency Department"},
                            {"key": "8", "value": "Endoscopy suite"},
                            {"key": "9", "value": "Hallway/common area"},
                            {"key": "10", "value": "ICU/CCU"},
                            {"key": "11", "value": "In transit"},
                            {"key": "12", "value": "NICU/PICU"},
                            {"key": "13", "value": "OB/Gyn"},
                            {"key": "14", "value": "OR"},
                            {"key": "15", "value": "Other outpatient services"},
                            {"key": "16", "value": "PACU/Recovery"},
                            {"key": "17", "value": "Pediatric care"},
                            {"key": "18", "value": "Radiology"},
                            {"key": "19", "value": "Rehabilitation Services"},
                            {"key": "20", "value": "Other"}
                        ]
                    },
                    {
                        "uuid": "d86f5916-5b6e-45d6-9ba4-fa7a50fec674",
                        "question_text": "Patient Type",
                        "proposed_alias": "patientType",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "Inpatient"},
                            {"key": "2", "value": "Outpatient"},
                            {"key": "3", "value": "Observation"},
                            {"key": "4", "value": "Visitor"},
                            {"key": "5", "value": "Staff"},
                            {"key": "6", "value": "Swing Beds (under hospital license)"},
                            {"key": "7", "value": "Other"}
                        ]
                    },
                    {
                        "uuid": "f1f2584d-7eae-410a-937a-0c261c3f341d",
                        "question_text": "Patient Age",
                        "proposed_alias": "patientAge",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "<28 days"},
                            {"key": "2", "value": "28 days-2 years"},
                            {"key": "3", "value": "3-12 years"},
                            {"key": "4", "value": "13-18 years"},
                            {"key": "5", "value": "19-39 years"},
                            {"key": "6", "value": "40-64 years"},
                            {"key": "7", "value": "65-74 years"},
                            {"key": "8", "value": "75-84 years"},
                            {"key": "9", "value": ">85 years"}
                        ]
                    },
                    {
                        "uuid": "9910ca9d-2765-41c6-8bf3-575b19d07309",
                        "question_text": "Patient Race",
                        "proposed_alias": "patientRace",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "American Indian/Alaska Native"},
                            {"key": "2", "value": "Asian"},
                            {"key": "3", "value": "Black or African American"},
                            {"key": "4", "value": "White/Caucasian"},
                            {"key": "5", "value": "Multiple"},
                            {"key": "6", "value": "Unknown/Not Provided"},
                            {"key": "7", "value": "Other"}
                        ]
                    },
                    {
                        "uuid": "cb6ec294-4ee2-45b0-a9cf-672f169b2271",
                        "question_text": "Patient Ethnicity",
                        "proposed_alias": "patientEthnicity",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "Hispanic or Latino"},
                            {"key": "2", "value": "Not Hispanic or Latino"},
                            {"key": "3", "value": "Unknown"}
                        ]
                    },
                    {
                        "uuid": "55230a2f-98bc-4fbc-af00-b71f59861e1c",
                        "question_text": "Patient Language",
                        "proposed_alias": "patientLanguage",
                        "question_type": "drop_down",
                        "question_options": [
                            {"key": "1", "value": "English"},
                            {"key": "2", "value": "Spanish"},
                            {"key": "3", "value": "Somali"},
                            {"key": "4", "value": "Hmong"},
                            {"key": "5", "value": "Karen"},
                            {"key": "6", "value": "Vietnamese"},
                            {"key": "7", "value": "Russian"},
                            {"key": "8", "value": "Oromo"},
                            {"key": "9", "value": "Arabic"},
                            {"key": "10", "value": "American Sign Language"},
                            {"key": "11", "value": "Amharic"},
                            {"key": "12", "value": "Khmer"},
                            {"key": "13", "value": "Nepali"},
                            {"key": "14", "value": "Other"}
                        ]
                    }
                ]
            }
        ]
    }
    
    # Extract all existing categories we've already created
    existing_categories = {
        'injury-severity', 'event-time', 'event-location', 
        'patient-type', 'patient-age', 'patient-race', 
        'patient-ethnicity', 'patient-language'
    }
    
    print("Existing categories already created:", existing_categories)
    print("Skipping these and processing only new categories from the full JSON...")
    
    return existing_categories

if __name__ == "__main__":
    print("Processing remaining dropdown and multiselect values...")
    existing = process_json_data()
    print(f"Found {len(existing)} existing categories to skip")

