# PreValue Sources - Updated Format

## Important Change

The prevalue sources have been updated to use the correct `<PreValue>` format instead of `<PreValueSource>`. This means they are now configuration files that get imported directly into Umbraco, rather than requiring SQL INSERT statements.

## Current PreValue Sources

### PC1 PreValue Source
- **File**: `prevalue-sources/pc1.config`
- **Key**: `g2f3e4d5-c6b7-8902-cdef-234567890bcd`
- **Name**: `PC1`
- **RootNode ID**: `b2c3d4e5-f6a7-8901-bcde-f23456789abc` (PC1 lookupItemFolder)

### PC2 PreValue Source
- **File**: `prevalue-sources/pc2.config`
- **Key**: `f1e2d3c4-b5a6-7890-cdef-123456789abc`
- **Name**: `PC2`
- **RootNode ID**: `a1b2c3d4-e5f6-7890-abcd-ef1234567890` (PC2 lookupItemFolder)

## Structure

Each PreValue source now follows this format:

```xml
<?xml version="1.0" encoding="utf-8"?>
<PreValue Key="[GUID]" Alias="[Alias]">
  <Info>
    <Name>[Name]</Name>
    <FieldPreValueSourceTypeId>de996870-c45a-11de-8a39-0800200c9a66</FieldPreValueSourceTypeId>
  </Info>
  <Settings>{
  "RootNode": "{\"type\":\"content\",\"id\":\"[lookupItemFolder-GUID]\",\"dynamicRoot\":{\"originKey\":\"[lookupItemFolder-GUID]\",\"originAlias\":\"ByKey\"}}",
  "UseCurrentPage": "False",
  "DocType": "lookupItem",
  "ValueField": "lookupValue",
  "CaptionField": "",
  "ListGrandChildren": "False",
  "OrderBy": "Node order"
}</Settings>
</PreValue>
```

## Key Points

1. **RootNode ID and originKey**: Both use the lookupItemFolder Content Key GUID
2. **FieldPreValueSourceTypeId**: Standard Umbraco field type ID for content picker
3. **ValueField**: Set to "lookupValue" to match our lookup item property
4. **DocType**: Set to "lookupItem" to filter only lookup items
5. **OrderBy**: Set to "Node order" for proper sorting

## Import Process

These PreValue config files should be imported directly into Umbraco using the standard content import process, rather than requiring SQL statements.

