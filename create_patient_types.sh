#!/bin/bash

# Patient Type items
declare -A types=(
    [1]="Inpatient"
    [2]="Outpatient"
    [3]="Observation"
    [4]="Visitor"
    [5]="Staff"
    [6]="Swing Beds"
    [7]="Other"
)

declare -A guids=(
    [1]="f2a9d4e8-1c5b-6f0a-3d7e-9b2f5a8d1c4e"
    [2]="a3b0e5f9-2d6c-7a1b-4e8f-0c3a6b9e2d5f"
    [3]="b4c1f6a0-3e7d-8b2c-5f9a-1d4b7c0f3e6a"
    [4]="c5d2a7b1-4f8e-9c3d-6a0b-2e5c8d1a4f7b"
    [5]="d6e3b8c2-5a9f-0d4e-7b1c-3f6d9e2b5a8c"
    [6]="e7f4c9d3-6b0a-1e5f-8c2d-4a7e0f3c6b9d"
    [7]="f8a5d0e4-7c1b-2f6a-9d3e-5b8f1a4d7c0e"
)

for key in "${!types[@]}"; do
    name="${types[$key]}"
    guid="${guids[$key]}"
    sort_order=$((key - 1))
    
    cat > "adverse-health-events/Patient Type - $name.config" << CONFIGEOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$name" Level="5">
  <Info>
    <Parent Key="e1f8c3d7-0b4a-5e9f-2c6d-8a1e4f7c0d3b">Patient Type</Parent>
    <Path>/Home/Config/LookupItems/Patient Type/$name</Path>
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

echo "Created Patient Type config files"
