#!/bin/bash

# Patient Language items
declare -A languages=(
    [1]="English"
    [2]="Spanish"
    [3]="Somali"
    [4]="Hmong"
    [5]="Karen"
    [6]="Vietnamese"
    [7]="Russian"
    [8]="Oromo"
    [9]="Arabic"
    [10]="American Sign Language"
    [11]="Amharic"
    [12]="Khmer"
    [13]="Nepali"
    [14]="Other"
)

declare -A guids=(
    [1]="e6f9a3d7-0b4e-1f6a-8d3b-5a9e2f5d8b1e"
    [2]="f7a0b4e8-1c5f-2a7b-9e4c-6b0f3a6e9c2f"
    [3]="a8b1c5f9-2d6a-3b8c-0f5d-7c1a4b7f0d3a"
    [4]="b9c2d6a0-3e7b-4c9d-1a6e-8d2b5c8a1e4b"
    [5]="c0d3e7b1-4f8c-5d0e-2b7f-9e3c6d9b2f5c"
    [6]="d1e4f8c2-5a9d-6e1f-3c8a-0f4d7e0c3a6d"
    [7]="e2f5a9d3-6b0e-7f2a-4d9b-1a5e8f1d4b7e"
    [8]="f3a6b0e4-7c1f-8a3b-5e0c-2b6f9a2e5c8f"
    [9]="a4b7c1f5-8d2a-9b4c-6f1d-3c7a0b3f6d9a"
    [10]="b5c8d2a6-9e3b-0c5d-7a2e-4d8b1c4a7e0b"
    [11]="c6d9e3b7-0f4c-1d6e-8b3f-5e9c2d5b8f1c"
    [12]="d7e0f4c8-1a5d-2e7f-9c4a-6f0d3e6c9a2d"
    [13]="e8f1a5d9-2b6e-3f8a-0d5b-7a1e4f7d0b3e"
    [14]="f9a2b6e0-3c7f-4a9b-1e6c-8b2f5a8e1c4f"
)

for key in "${!languages[@]}"; do
    name="${languages[$key]}"
    guid="${guids[$key]}"
    sort_order=$((key - 1))
    
    cat > "adverse-health-events/Patient Language - $name.config" << CONFIGEOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$name" Level="5">
  <Info>
    <Parent Key="d5e8f2c6-9a3d-0e5f-7c2a-4f8d1e4c7a0d">Patient Language</Parent>
    <Path>/Home/Config/LookupItems/Patient Language/$name</Path>
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

echo "Created Patient Language config files"
