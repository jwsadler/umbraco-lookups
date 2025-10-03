# Adverse Health Events - Umbraco Configuration Files

This directory contains Umbraco CMS configuration files for the Adverse Health Events system dropdown fields and lookup values.

## Overview

The configuration implements a hierarchical structure for various dropdown fields used in adverse health event reporting. All items are organized under the parent path `/Home/Config/LookupItems` with the parent key `9be72476-19a5-4e57-a3e6-f433bcdec4c8`.

## Structure

### Dropdown Categories (Level 4)
1. **Event Time** - 3 values (During, Before, After)
2. **Injury Severity** - 8 values (Death, Serious Injury, Potential, etc.)
3. **Event Location** - 20 values (Adult med/surg, Ambulatory surgery, etc.)
4. **Patient Type** - 7 values (Inpatient, Outpatient, Observation, etc.)
5. **Patient Age** - 9 values (<28 days, 28 days-2 years, etc.)
6. **Patient Race** - 7 values (American Indian/Alaska Native, Asian, etc.)
7. **Patient Ethnicity** - 3 values (Hispanic or Latino, Not Hispanic or Latino, Unknown)
8. **Patient Language** - 14 values (English, Spanish, Somali, etc.)

### Individual Lookup Values (Level 5)
Each dropdown category contains individual lookup items with:
- Unique GUID identifiers
- Sequential sort orders (0-based)
- Numeric lookup values (1-based)
- Proper parent-child relationships

## File Naming Convention

- Container files: `{Category Name}.config`
- Lookup value files: `{Category Name} - {Value Name}.config`
- Special characters in filenames are handled appropriately (/, <, > replaced or removed)

## Technical Details

### XML Structure
Each configuration file follows the standard Umbraco content structure:
- Content element with Key, Alias, and Level attributes
- Info section with Parent, Path, ContentType, and other metadata
- Properties section with lookupValue containing the numeric key

### Content Types
- **lookupItemFolder**: Used for dropdown containers (Level 4)
- **lookupItem**: Used for individual lookup values (Level 5)

### GUID Management
All GUIDs are unique and consistently generated to avoid conflicts during import.

### Sort Orders
- Dropdown containers: Sequential starting from 0
- Lookup values: Sequential within each container starting from 0

## Files Created

### Event Time (3 files + container)
- During (key: 1)
- Before (key: 2) 
- After (key: 3)

### Injury Severity (8 files + container)
- Death (key: 1)
- Serious Injury (key: 2)
- Potential (key: 3)
- Error but No Reach (key: 4)
- Reach but No Harm (key: 5)
- Monitoring Required (key: 6)
- Treatment Required (key: 7)
- Longer Stay Required (key: 8)

### Event Location (20 files + container)
- Adult med/surg (key: 1)
- Ambulatory surgery (key: 2)
- Behavioral health/psych (key: 3)
- Cardiac cath lab (key: 4)
- Diagnostic/Labs (key: 5)
- Dialysis unit (key: 6)
- Emergency Department (key: 7)
- Endoscopy suite (key: 8)
- Hallway/common area (key: 9)
- ICU/CCU (key: 10)
- In transit (key: 11)
- NICU/PICU (key: 12)
- OB/Gyn (key: 13)
- OR (key: 14)
- Other outpatient services (key: 15)
- PACU/Recovery (key: 16)
- Pediatric care (key: 17)
- Radiology (key: 18)
- Rehabilitation Services (key: 19)
- Other (key: 20)

### Patient Type (7 files + container)
- Inpatient (key: 1)
- Outpatient (key: 2)
- Observation (key: 3)
- Visitor (key: 4)
- Staff (key: 5)
- Swing Beds (key: 6)
- Other (key: 7)

### Patient Age (9 files + container)
- <28 days (key: 1)
- 28 days-2 years (key: 2)
- 3-12 years (key: 3)
- 13-18 years (key: 4)
- 19-39 years (key: 5)
- 40-64 years (key: 6)
- 65-74 years (key: 7)
- 75-84 years (key: 8)
- >85 years (key: 9)

### Patient Race (7 files + container)
- American Indian/Alaska Native (key: 1)
- Asian (key: 2)
- Black or African American (key: 3)
- White/Caucasian (key: 4)
- Multiple (key: 5)
- Unknown/Not Provided (key: 6)
- Other (key: 7)

### Patient Ethnicity (3 files + container)
- Hispanic or Latino (key: 1)
- Not Hispanic or Latino (key: 2)
- Unknown (key: 3)

### Patient Language (14 files + container)
- English (key: 1)
- Spanish (key: 2)
- Somali (key: 3)
- Hmong (key: 4)
- Karen (key: 5)
- Vietnamese (key: 6)
- Russian (key: 7)
- Oromo (key: 8)
- Arabic (key: 9)
- American Sign Language (key: 10)
- Amharic (key: 11)
- Khmer (key: 12)
- Nepali (key: 13)
- Other (key: 14)

## Total Files
- **79 configuration files** total
- **8 dropdown containers** (Level 4)
- **71 lookup value items** (Level 5)

## Import Instructions

1. Copy all `.config` files to your Umbraco installation's appropriate directory
2. Import through Umbraco backoffice or deploy through your standard deployment process
3. Verify the hierarchy structure matches the expected parent-child relationships
4. Test dropdown functionality in your adverse health events forms

## Notes

- All timestamps use the creation date: 2025-10-03T08:32:47 (Event Time containers use 08:28:25)
- All items are marked as unpublished by default
- No templates are assigned to any items
- All items are marked as not trashed
- CDATA sections are used for lookup values to ensure proper XML handling

