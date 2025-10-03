#!/bin/bash

# Patient Age items
declare -A ages=(
    [1]="<28 days"
    [2]="28 days-2 years"
    [3]="3-12 years"
    [4]="13-18 years"
    [5]="19-39 years"
    [6]="40-64 years"
    [7]="65-74 years"
    [8]="75-84 years"
    [9]=">85 years"
)

declare -A guids=(
    [1]="a3c0f5d9-2e6b-7c1a-4f8d-0b3c6f9a2e5b"
    [2]="b4d1a6e0-3f7c-8d2b-5a9e-1c4d7a0b3f6c"
    [3]="c5e2b7f1-4a8d-9e3c-6b0f-2d5e8b1c4a7d"
    [4]="d6f3c8a2-5b9e-0f4d-7c1a-3e6f9c2d5b8e"
    [5]="e7a4d9b3-6c0f-1a5e-8d2b-4f7a0d3e6c9f"
    [6]="f8b5e0c4-7d1a-2b6f-9e3c-5a8b1e4f7d0a"
    [7]="a9c6f1d5-8e2b-3c7a-0f4d-6b9c2f5a8e1b"
    [8]="b0d7a2e6-9f3c-4d8b-1a5e-7c0d3a6b9f2c"
    [9]="c1e8b3f7-0a4d-5e9c-2b6f-8d1e4b7c0a3d"
)

for key in "${!ages[@]}"; do
    name="${ages[$key]}"
    guid="${guids[$key]}"
    sort_order=$((key - 1))
    
    # Create safe filename by replacing special characters
    safe_name=$(echo "$name" | sed 's/[<>]//g')
    
    cat > "adverse-health-events/Patient Age - $safe_name.config" << CONFIGEOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$name" Level="5">
  <Info>
    <Parent Key="f2b9e4c8-1d5a-6a0b-3e7f-9c2f6b9e2d4c">Patient Age</Parent>
    <Path>/Home/Config/LookupItems/Patient Age/$name</Path>
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

echo "Created Patient Age config files"
