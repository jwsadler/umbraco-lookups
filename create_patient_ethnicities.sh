#!/bin/bash

# Patient Ethnicity items
declare -A ethnicities=(
    [1]="Hispanic or Latino"
    [2]="Not Hispanic or Latino"
    [3]="Unknown"
)

declare -A guids=(
    [1]="d2a5c9f3-6b8e-0d4a-7c1f-3e6d9a2f5c8e"
    [2]="e3b6d0a4-7c9f-1e5b-8d2a-4f7e0b3a6d9f"
    [3]="f4c7e1b5-8d0a-2f6c-9e3b-5a8f1c4b7e0a"
)

for key in "${!ethnicities[@]}"; do
    name="${ethnicities[$key]}"
    guid="${guids[$key]}"
    sort_order=$((key - 1))
    
    cat > "adverse-health-events/Patient Ethnicity - $name.config" << CONFIGEOF
<?xml version="1.0" encoding="utf-8"?>
<Content Key="$guid" Alias="$name" Level="5">
  <Info>
    <Parent Key="c1f4b8e2-5a7d-9c3f-6b0e-2d5c8f1e4b7d">Patient Ethnicity</Parent>
    <Path>/Home/Config/LookupItems/Patient Ethnicity/$name</Path>
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

echo "Created Patient Ethnicity config files"
