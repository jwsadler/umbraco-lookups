# Adverse Health Events - Umbraco Configuration Files

This directory contains Umbraco CMS configuration files for the Adverse Health Events system dropdown fields and lookup values, organized in a clean sub-folder structure.

## 📁 Organized Structure

Each dropdown category has its own sub-folder for better organization:

```
adverse-health-events/
├── event-time/           # Event Time configurations
├── injury-severity/      # Injury Severity configurations  
├── event-location/       # Event Location configurations
├── patient-type/         # Patient Type configurations
├── patient-age/          # Patient Age configurations
├── patient-race/         # Patient Race configurations
├── patient-ethnicity/    # Patient Ethnicity configurations
└── patient-language/     # Patient Language configurations
```

## 🔧 File Naming Strategy

**Problem**: Some display names contain "/" characters which cannot be used in file paths as Umbraco treats them as path separators.

**Solution**: 
- **Filename**: Replace "/" with "-" for path safety (e.g., `Adult med-surg.config`)
- **Display Name**: Keep original "/" in XML content (e.g., `Adult med/surg`)
- **Result**: Path-safe filenames while preserving correct display names in Umbraco

### Examples:
| Original Name | Filename | Display Name |
|---------------|----------|--------------|
| Adult med/surg | `Adult med-surg.config` | `Adult med/surg` |
| ICU/CCU | `ICU-CCU.config` | `ICU/CCU` |
| American Indian/Alaska Native | `American Indian-Alaska Native.config` | `American Indian/Alaska Native` |

## 📊 Overview

- **79 configuration files** total
- **8 dropdown containers** (Level 4)
- **71 lookup value items** (Level 5)
- All items organized under `/Home/Config/LookupItems`
- Parent key: `9be72476-19a5-4e57-a3e6-f433bcdec4c8`

## 🗂️ Dropdown Categories

### 1. Event Time (3 values)
- 7AM - 3PM
- 3PM - 11PM  
- 11PM - 7AM

### 2. Injury Severity (8 values)
- Death
- Serious Injury
- Potential
- Error but No Reach
- Reach but No Harm
- Monitoring Required
- Treatment Required
- Longer Stay Required

### 3. Event Location (20 values)
- Adult med/surg
- Ambulatory surgery
- Behavioral health/psych
- Cardiac cath lab
- Diagnostic/Labs
- Dialysis unit
- Emergency Department
- Endoscopy suite
- Hallway/common area
- ICU/CCU
- In transit
- NICU/PICU
- OB/Gyn
- OR
- Other outpatient services
- PACU/Recovery
- Pediatric care
- Radiology
- Rehabilitation Services
- Other

### 4. Patient Type (7 values)
- Inpatient
- Outpatient
- Observation
- Visitor
- Staff
- Swing Beds
- Other

### 5. Patient Age (9 values)
- <28 days
- 28 days-2 years
- 3-12 years
- 13-18 years
- 19-39 years
- 40-64 years
- 65-74 years
- 75-84 years
- >85 years

### 6. Patient Race (7 values)
- American Indian/Alaska Native
- Asian
- Black or African American
- White/Caucasian
- Multiple
- Unknown/Not Provided
- Other

### 7. Patient Ethnicity (3 values)
- Hispanic or Latino
- Not Hispanic or Latino
- Unknown

### 8. Patient Language (14 values)
- English
- Spanish
- Somali
- Hmong
- Karen
- Vietnamese
- Russian
- Oromo
- Arabic
- American Sign Language
- Amharic
- Khmer
- Nepali
- Other

## 🔧 Technical Details

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

## 📥 Import Instructions

1. **Copy Files**: Copy all `.config` files to your Umbraco installation's appropriate directory
2. **Import**: Import through Umbraco backoffice or deploy through your standard deployment process
3. **Verify**: Check the hierarchy structure matches the expected parent-child relationships
4. **Test**: Verify dropdown functionality in your adverse health events forms

## 📝 Notes

- All timestamps use the creation date: 2025-10-03T08:32:47 (containers use 08:28:25)
- All items are marked as unpublished by default
- No templates are assigned to any items
- All items are marked as not trashed
- CDATA sections are used for lookup values to ensure proper XML handling
- Organized sub-folder structure makes maintenance and updates easier
- File naming strategy ensures compatibility with all file systems and Umbraco path handling

