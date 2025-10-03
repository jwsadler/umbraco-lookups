#!/bin/bash

# Patient Race items
declare -A races=(
    [1]="American Indian/Alaska Native"
    [2]="Asian"
    [3]="Black or African American"
    [4]="White/Caucasian"
    [5]="Multiple"
    [6]="Unknown/Not Provided"
    [7]="Other"
)

declare -A guids=(
    [1]="b4e1a7d0-3f6c-8b2e-5a9d-1c4e7b0d3a6c"
    [2]="c5f2b8e1-4a7d-9c3f-6b0e-2d5f8c1e4b7d"
    [3]="d6a3c9f2-5b8e-0d4a-7c1f-3e6a9d2f5c8e"
    [4]="e7b4d0a3-6c9f-1e5b-8d2a-4f7b0e3a6d9f"
    [5]="f8c5e1b4-7d0a-2f6c-9e3b-5a8c1f4b7e0a"
    [6]="a9d6f2c5-8e1b-3a7d-0f4c-6b9d2a5c8f1b"
    [7]="b0e7a3d6-9f2c-4b8e-1a5d-7c0e3b6d9a2c"
)

for key in "${!races[@]}"; do
    name="${races[$key]}"
    guid="${guids[$key]}"
    sort_order=$((key - 1))
    
    # Create safe filename by replacing special characters
    safe_name=$(echo "$name" | sed 's/[\/]/-/g')
    
    cat > "adverse-health-events/Patient Race - $safe_name.config" << CONFIGEOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$name" Level="5">
  <Info>
    <Parent Key="a3d0f6c9-2e5b-7a1d-4f8c-0b3d6a9c2f5d">Patient Race</Parent>
    <Path>/Home/Config/LookupItems/Patient Race/$name</Path>
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

echo "Created Patient Race config files"
