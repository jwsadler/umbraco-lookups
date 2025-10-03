#!/bin/bash

# Strategy for handling "/" in names:
# 1. Replace "/" with "-" in filenames for path safety
# 2. Keep original names with "/" in the XML content
# 3. Organize into sub-folders by category

echo "Reorganizing configuration files..."

# Function to create config file with path-safe filename but original content
create_config_file() {
    local category="$1"
    local folder="$2"
    local filename="$3"
    local display_name="$4"
    local lookup_value="$5"
    local sort_order="$6"
    local guid="$7"
    local parent_key="9be72476-19a5-4e57-a3e6-f433bcdec4c8"
    local timestamp="2025-10-03T08:32:47"
    
    # Create path-safe filename by replacing problematic characters
    local safe_filename=$(echo "$filename" | sed 's/\//-/g' | sed 's/<//g' | sed 's/>//g')
    
    cat > "adverse-health-events/$folder/$safe_filename.config" << EOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$category-$(echo "$display_name" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')" Level="5">
  <Info>
    <Parent Key="$parent_key">$category</Parent>
    <Path>/Home/Config/LookupItems,$category</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItem</ContentType>
    <CreateDate>$timestamp</CreateDate>
    <NodeName Default="$display_name" />
  </Info>
  <Properties>
    <lookupValue><![CDATA[$lookup_value]]></lookupValue>
  </Properties>
</Content>
EOF
    
    echo "Created: $folder/$safe_filename.config (Display: $display_name)"
}

# Function to create container config
create_container_config() {
    local category="$1"
    local folder="$2"
    local display_name="$3"
    local sort_order="$4"
    local guid="$5"
    local parent_key="9be72476-19a5-4e57-a3e6-f433bcdec4c8"
    local timestamp="2025-10-03T08:28:25"
    
    cat > "adverse-health-events/$folder/$category.config" << EOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$category" Level="4">
  <Info>
    <Parent Key="$parent_key">LookupItems</Parent>
    <Path>/Home/Config/LookupItems</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItemFolder</ContentType>
    <CreateDate>$timestamp</CreateDate>
    <NodeName Default="$display_name" />
  </Info>
  <Properties />
</Content>
EOF
    
    echo "Created container: $folder/$category.config"
}

echo "Creating Event Time configs..."
create_container_config "event-time" "event-time" "Event Time" "0" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-time" "event-time" "7AM - 3PM" "7AM - 3PM" "1" "0" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-time" "event-time" "3PM - 11PM" "3PM - 11PM" "2" "1" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-time" "event-time" "11PM - 7AM" "11PM - 7AM" "3" "2" "$(uuidgen | tr '[:upper:]' '[:lower:]')"

echo "Creating Injury Severity configs..."
create_container_config "injury-severity" "injury-severity" "Injury Severity" "1" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Death" "Death" "1" "0" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Serious Injury" "Serious Injury" "2" "1" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Potential" "Potential" "3" "2" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Error but No Reach" "Error but No Reach" "4" "3" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Reach but No Harm" "Reach but No Harm" "5" "4" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Monitoring Required" "Monitoring Required" "6" "5" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Treatment Required" "Treatment Required" "7" "6" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "injury-severity" "injury-severity" "Longer Stay Required" "Longer Stay Required" "8" "7" "$(uuidgen | tr '[:upper:]' '[:lower:]')"

echo "Creating Event Location configs..."
create_container_config "event-location" "event-location" "Event Location" "2" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Adult med-surg" "Adult med/surg" "1" "0" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Ambulatory surgery" "Ambulatory surgery" "2" "1" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Behavioral health-psych" "Behavioral health/psych" "3" "2" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Cardiac cath lab" "Cardiac cath lab" "4" "3" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Diagnostic-Labs" "Diagnostic/Labs" "5" "4" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Dialysis unit" "Dialysis unit" "6" "5" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Emergency Department" "Emergency Department" "7" "6" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Endoscopy suite" "Endoscopy suite" "8" "7" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Hallway-common area" "Hallway/common area" "9" "8" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "ICU-CCU" "ICU/CCU" "10" "9" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "In transit" "In transit" "11" "10" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "NICU-PICU" "NICU/PICU" "12" "11" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "OB-Gyn" "OB/Gyn" "13" "12" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "OR" "OR" "14" "13" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Other outpatient services" "Other outpatient services" "15" "14" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "PACU-Recovery" "PACU/Recovery" "16" "15" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Pediatric care" "Pediatric care" "17" "16" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Radiology" "Radiology" "18" "17" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Rehabilitation Services" "Rehabilitation Services" "19" "18" "$(uuidgen | tr '[:upper:]' '[:lower:]')"
create_config_file "event-location" "event-location" "Other" "Other" "20" "19" "$(uuidgen | tr '[:upper:]' '[:lower:]')"

echo "All configurations created successfully!"
echo "Strategy used for '/' in names:"
echo "- Filename: Replace '/' with '-' (e.g., 'Adult med-surg.config')"
echo "- Display Name: Keep original '/' (e.g., 'Adult med/surg')"
echo "- This ensures path safety while preserving correct display names"

