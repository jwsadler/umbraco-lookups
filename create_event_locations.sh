#!/bin/bash

# Event Location items with their keys and names
declare -A locations=(
    [6]="Dialysis unit"
    [7]="Emergency Department"
    [8]="Endoscopy suite"
    [9]="Hallway/common area"
    [10]="ICU/CCU"
    [11]="In transit"
    [12]="NICU/PICU"
    [13]="OB/Gyn"
    [14]="OR"
    [15]="Other outpatient services"
    [16]="PACU/Recovery"
    [17]="Pediatric care"
    [18]="Radiology"
    [19]="Rehabilitation Services"
    [20]="Other"
)

# Generate GUIDs and create config files
declare -A guids=(
    [6]="b6e2f7c1-3d8a-4e9b-5c6d-1a3b6e9c2f7d"
    [7]="c7f3a8d2-4e9b-5f0c-6d7e-2b4c7f0d3a8e"
    [8]="d8a4b9e3-5f0c-6a1d-7e8f-3c5d8a1e4b9f"
    [9]="e9b5c0f4-6a1d-7b2e-8f9a-4d6e9b2f5c0a"
    [10]="f0c6d1a5-7b2e-8c3f-9a0b-5e7f0c3a6d1b"
    [11]="a1d7e2b6-8c3f-9d4a-0b1c-6f8a1d4b7e2c"
    [12]="b2e8f3c7-9d4a-0e5b-1c2d-7a9b2e5c8f3d"
    [13]="c3f9a4d8-0e5b-1f6c-2d3e-8b0c3f6d9a4e"
    [14]="d4a0b5e9-1f6c-2a7d-3e4f-9c1d4a7e0b5f"
    [15]="e5b1c6f0-2a7d-3b8e-4f5a-0d2e5b8f1c6a"
    [16]="f6c2d7a1-3b8e-4c9f-5a6b-1e3f6c9a2d7b"
    [17]="a7d3e8b2-4c9f-5d0a-6b7c-2f4a7d0b3e8c"
    [18]="b8e4f9c3-5d0a-6e1b-7c8d-3a5b8e1c4f9d"
    [19]="c9f5a0d4-6e1b-7f2c-8d9e-4b6c9f2d5a0e"
    [20]="d0a6b1e5-7f2c-8a3d-9e0f-5c7d0a3e6b1f"
)

for key in "${!locations[@]}"; do
    name="${locations[$key]}"
    guid="${guids[$key]}"
    sort_order=$((key - 1))
    
    # Create safe filename by replacing special characters
    safe_name=$(echo "$name" | sed 's/[\/]/-/g')
    
    cat > "adverse-health-events/Event Location - $safe_name.config" << CONFIGEOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$name" Level="5">
  <Info>
    <Parent Key="b0e6f1c5-7d2a-8e3f-9c0d-5a7b0e3f6c1d">Event Location</Parent>
    <Path>/Home/Config/LookupItems/Event Location/$name</Path>
    <Trashed>false</Trashed>
    <ContentType>lookupItem</ContentType>
    <CreateDate>2025-10-03T08:32:47</CreateDate>
    <NodeName Default="$name" />
    <SortOrder>$sort_order</SortOrder>
    <Published Default="false" />
    <Schedule />
    <Template />
  </Info>
  <Properties>
    <lookupValue>
      <Value><![CDATA[$key]]></Value>
    </lookupValue>
  </Properties>
</Content>
CONFIGEOF
done

echo "Created Event Location config files"
