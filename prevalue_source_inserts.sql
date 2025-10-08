-- SQL INSERT statements for UFPrevalueSource table
-- Generated for Umbraco Forms prevalue sources
-- Uses correct lookupItemFolder Content Key GUIDs as RootNode
-- Includes conditional checks to prevent duplicate inserts
-- Date: 2025-10-03

-- Begin transaction for safety
BEGIN TRANSACTION;

DECLARE @ErrorCount INT = 0;

-- Body Site (body-site)
-- Prevalue Source Key: fc9e08cc-2406-4add-a8bc-c9bf1904bf53
-- lookupItemFolder Content Key: caa7692b-b904-4531-8189-b131d6dc4360
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3c5bdba2-8a5d-4c38-a288-72370ef351a8')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3c5bdba2-8a5d-4c38-a288-72370ef351a8','Body Site','{
    "value": "Body Site",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"caa7692b-b904-4531-8189-b131d6dc4360\",\"dynamicRoot\":{\"originKey\":\"caa7692b-b904-4531-8189-b131d6dc4360\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "3c5bdba2-8a5d-4c38-a288-72370ef351a8",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Body Site (Key: 3c5bdba2-8a5d-4c38-a288-72370ef351a8)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Body Site (Key: 3c5bdba2-8a5d-4c38-a288-72370ef351a8)';
END

-- Cap Methodology (cap-methodology)
-- Prevalue Source Key: b1f9ce69-5a1f-4ff8-b553-b62472f8bf58
-- lookupItemFolder Content Key: c072b5b3-3989-45fa-b5c7-fcd84a7f2978
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '388673a0-5c40-4314-ac4d-0763edd9cae1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('388673a0-5c40-4314-ac4d-0763edd9cae1','Cap Methodology','{
    "value": "Cap Methodology",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"c072b5b3-3989-45fa-b5c7-fcd84a7f2978\",\"dynamicRoot\":{\"originKey\":\"c072b5b3-3989-45fa-b5c7-fcd84a7f2978\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "388673a0-5c40-4314-ac4d-0763edd9cae1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Cap Methodology (Key: 388673a0-5c40-4314-ac4d-0763edd9cae1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Cap Methodology (Key: 388673a0-5c40-4314-ac4d-0763edd9cae1)';
END

-- Communication Breakdown Point (communication-breakdown-point)
-- Prevalue Source Key: f2e4b0a9-294e-44f7-b731-b0dc898fd7c0
-- lookupItemFolder Content Key: 335d23fe-ffc3-4014-9f06-16f87ecc6aae
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0ce7f73a-64b2-44b0-bfb9-db72d87d8eff')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0ce7f73a-64b2-44b0-bfb9-db72d87d8eff','Communication Breakdown Point','{
    "value": "Communication Breakdown Point",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"335d23fe-ffc3-4014-9f06-16f87ecc6aae\",\"dynamicRoot\":{\"originKey\":\"335d23fe-ffc3-4014-9f06-16f87ecc6aae\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "0ce7f73a-64b2-44b0-bfb9-db72d87d8eff",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Breakdown Point (Key: 0ce7f73a-64b2-44b0-bfb9-db72d87d8eff)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Breakdown Point (Key: 0ce7f73a-64b2-44b0-bfb9-db72d87d8eff)';
END

-- Communication Failure Timing (communication-failure-timing)
-- Prevalue Source Key: ab2f4085-0f43-419f-938f-9c8071ff2c6d
-- lookupItemFolder Content Key: 73a96b5c-226e-4db8-8cb0-7e7730cf39b1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ee95c067-9799-457b-83d3-9fa848767657')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ee95c067-9799-457b-83d3-9fa848767657','Communication Failure Timing','{
    "value": "Communication Failure Timing",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"73a96b5c-226e-4db8-8cb0-7e7730cf39b1\",\"dynamicRoot\":{\"originKey\":\"73a96b5c-226e-4db8-8cb0-7e7730cf39b1\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "ee95c067-9799-457b-83d3-9fa848767657",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Failure Timing (Key: ee95c067-9799-457b-83d3-9fa848767657)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Failure Timing (Key: ee95c067-9799-457b-83d3-9fa848767657)';
END

-- Communication Information Subcategory (communication-information-subcategory)
-- Prevalue Source Key: 86cbdeb4-0e82-4192-ba9d-6a1b36b20ad2
-- lookupItemFolder Content Key: 4c629505-6240-4f6e-a9c5-f24538cb4cdf
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'd1aebf0c-f838-498d-9c92-8fa7f156d2a1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('d1aebf0c-f838-498d-9c92-8fa7f156d2a1','Communication Information Subcategory','{
    "value": "Communication Information Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"4c629505-6240-4f6e-a9c5-f24538cb4cdf\",\"dynamicRoot\":{\"originKey\":\"4c629505-6240-4f6e-a9c5-f24538cb4cdf\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "d1aebf0c-f838-498d-9c92-8fa7f156d2a1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Information Subcategory (Key: d1aebf0c-f838-498d-9c92-8fa7f156d2a1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Information Subcategory (Key: d1aebf0c-f838-498d-9c92-8fa7f156d2a1)';
END

-- Corrective Action Intervention (corrective-action-intervention)
-- Prevalue Source Key: 9dbd25e3-d624-4c17-a376-2467f56de5fb
-- lookupItemFolder Content Key: 284098bb-a6cb-4a6e-bdf0-56cb8a17e723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '18f52298-ab3e-4a6c-8ef1-71b9ce36368b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('18f52298-ab3e-4a6c-8ef1-71b9ce36368b','Corrective Action Intervention','{
    "value": "Corrective Action Intervention",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"284098bb-a6cb-4a6e-bdf0-56cb8a17e723\",\"dynamicRoot\":{\"originKey\":\"284098bb-a6cb-4a6e-bdf0-56cb8a17e723\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "18f52298-ab3e-4a6c-8ef1-71b9ce36368b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Corrective Action Intervention (Key: 18f52298-ab3e-4a6c-8ef1-71b9ce36368b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Corrective Action Intervention (Key: 18f52298-ab3e-4a6c-8ef1-71b9ce36368b)';
END

-- Device Category (device-category)
-- Prevalue Source Key: 87772cef-93ce-462a-9a0c-f4f56f62907b
-- lookupItemFolder Content Key: cd8d7f50-2860-4bf4-a49d-11d435bf6001
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f99815a0-cf63-4375-9b9e-a9b9372d2318')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f99815a0-cf63-4375-9b9e-a9b9372d2318','Device Category','{
    "value": "Device Category",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"cd8d7f50-2860-4bf4-a49d-11d435bf6001\",\"dynamicRoot\":{\"originKey\":\"cd8d7f50-2860-4bf4-a49d-11d435bf6001\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "f99815a0-cf63-4375-9b9e-a9b9372d2318",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Device Category (Key: f99815a0-cf63-4375-9b9e-a9b9372d2318)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Device Category (Key: f99815a0-cf63-4375-9b9e-a9b9372d2318)';
END

-- Electronic Communication Subcategory (electronic-communication-subcategory)
-- Prevalue Source Key: 25b745f5-712d-4cad-b340-d805d66ea42a
-- lookupItemFolder Content Key: 6ae227a2-4990-4b1e-814e-82705dbe87a1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '50778439-706e-4c07-9490-1cdf0f0f7dfa')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('50778439-706e-4c07-9490-1cdf0f0f7dfa','Electronic Communication Subcategory','{
    "value": "Electronic Communication Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"6ae227a2-4990-4b1e-814e-82705dbe87a1\",\"dynamicRoot\":{\"originKey\":\"6ae227a2-4990-4b1e-814e-82705dbe87a1\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "50778439-706e-4c07-9490-1cdf0f0f7dfa",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Electronic Communication Subcategory (Key: 50778439-706e-4c07-9490-1cdf0f0f7dfa)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Electronic Communication Subcategory (Key: 50778439-706e-4c07-9490-1cdf0f0f7dfa)';
END

-- Error Type (error-type)
-- Prevalue Source Key: 07159791-5e49-496d-9b61-efe7c1fa496e
-- lookupItemFolder Content Key: 3f21c1a2-40be-438d-9f77-dfa3fe10afd8
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'af4db61f-0f57-47bf-a9fa-e6637dceab28')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('af4db61f-0f57-47bf-a9fa-e6637dceab28','Error Type','{
    "value": "Error Type",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"3f21c1a2-40be-438d-9f77-dfa3fe10afd8\",\"dynamicRoot\":{\"originKey\":\"3f21c1a2-40be-438d-9f77-dfa3fe10afd8\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "af4db61f-0f57-47bf-a9fa-e6637dceab28",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Error Type (Key: af4db61f-0f57-47bf-a9fa-e6637dceab28)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Error Type (Key: af4db61f-0f57-47bf-a9fa-e6637dceab28)';
END

-- Event Location (event-location)
-- Prevalue Source Key: 5d641e0d-f5f7-4805-884b-8fedada26b1d
-- lookupItemFolder Content Key: e9b50e5e-c8ec-450f-8d57-191a4e945404
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '74e2e470-5e9f-4bb7-b597-141ae80ba790')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('74e2e470-5e9f-4bb7-b597-141ae80ba790','Event Location','{
    "value": "Event Location",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"e9b50e5e-c8ec-450f-8d57-191a4e945404\",\"dynamicRoot\":{\"originKey\":\"e9b50e5e-c8ec-450f-8d57-191a4e945404\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "74e2e470-5e9f-4bb7-b597-141ae80ba790",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Location (Key: 74e2e470-5e9f-4bb7-b597-141ae80ba790)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Location (Key: 74e2e470-5e9f-4bb7-b597-141ae80ba790)';
END

-- Event Time (event-time)
-- Prevalue Source Key: 58d722ec-1d54-4219-843e-6367bcf6477a
-- lookupItemFolder Content Key: 93034def-dbff-434a-a221-98a5bb090b2d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f3543357-7b2d-4d6d-8795-5e714d70faa0')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f3543357-7b2d-4d6d-8795-5e714d70faa0','Event Time','{
    "value": "Event Time",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"93034def-dbff-434a-a221-98a5bb090b2d\",\"dynamicRoot\":{\"originKey\":\"93034def-dbff-434a-a221-98a5bb090b2d\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "f3543357-7b2d-4d6d-8795-5e714d70faa0",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Time (Key: f3543357-7b2d-4d6d-8795-5e714d70faa0)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Time (Key: f3543357-7b2d-4d6d-8795-5e714d70faa0)';
END

-- Fall Injury (fall-injury)
-- Prevalue Source Key: c38740d4-fc73-464f-8e3d-2292b9fc643a
-- lookupItemFolder Content Key: d10e2c39-3ee4-433e-bc87-62f46faabd9e
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'd050cd8b-0968-448a-832f-9976fa3fd984')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('d050cd8b-0968-448a-832f-9976fa3fd984','Fall Injury','{
    "value": "Fall Injury",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"d10e2c39-3ee4-433e-bc87-62f46faabd9e\",\"dynamicRoot\":{\"originKey\":\"d10e2c39-3ee4-433e-bc87-62f46faabd9e\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "d050cd8b-0968-448a-832f-9976fa3fd984",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Injury (Key: d050cd8b-0968-448a-832f-9976fa3fd984)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Injury (Key: d050cd8b-0968-448a-832f-9976fa3fd984)';
END

-- Fall Location (fall-location)
-- Prevalue Source Key: d9ed7411-590c-44c8-af66-9677625b93b2
-- lookupItemFolder Content Key: 0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a64c9ae0-7c94-4e6e-8d23-83c27d7d95a4')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a64c9ae0-7c94-4e6e-8d23-83c27d7d95a4','Fall Location','{
    "value": "Fall Location",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c\",\"dynamicRoot\":{\"originKey\":\"0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "a64c9ae0-7c94-4e6e-8d23-83c27d7d95a4",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Location (Key: a64c9ae0-7c94-4e6e-8d23-83c27d7d95a4)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Location (Key: a64c9ae0-7c94-4e6e-8d23-83c27d7d95a4)';
END

-- Fall Prevention Measures (fall-prevention-measures)
-- Prevalue Source Key: f7f35f6c-9ba5-4f8a-b7e5-40b26e80b33c
-- lookupItemFolder Content Key: 2e6b60f7-196d-4c56-b5bc-ea2945623d8d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ac165f82-3552-47cd-a918-a9d5d512fd17')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ac165f82-3552-47cd-a918-a9d5d512fd17','Fall Prevention Measures','{
    "value": "Fall Prevention Measures",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"2e6b60f7-196d-4c56-b5bc-ea2945623d8d\",\"dynamicRoot\":{\"originKey\":\"2e6b60f7-196d-4c56-b5bc-ea2945623d8d\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "ac165f82-3552-47cd-a918-a9d5d512fd17",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Prevention Measures (Key: ac165f82-3552-47cd-a918-a9d5d512fd17)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Prevention Measures (Key: ac165f82-3552-47cd-a918-a9d5d512fd17)';
END

-- Harm Type (harm-type)
-- Prevalue Source Key: bb6b21d4-2a6e-4e56-b8a5-706582171c67
-- lookupItemFolder Content Key: d2ae1785-c0e0-4409-8d89-6a1c9dce999a
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3aeef509-0509-4db9-9b03-d8f509bd15f8')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3aeef509-0509-4db9-9b03-d8f509bd15f8','Harm Type','{
    "value": "Harm Type",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"d2ae1785-c0e0-4409-8d89-6a1c9dce999a\",\"dynamicRoot\":{\"originKey\":\"d2ae1785-c0e0-4409-8d89-6a1c9dce999a\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "3aeef509-0509-4db9-9b03-d8f509bd15f8",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Harm Type (Key: 3aeef509-0509-4db9-9b03-d8f509bd15f8)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Harm Type (Key: 3aeef509-0509-4db9-9b03-d8f509bd15f8)';
END

-- Human Factors Subcategory (human-factors-subcategory)
-- Prevalue Source Key: c7a2f14c-248a-4f1c-81ae-271662f1ef89
-- lookupItemFolder Content Key: a432bda1-1bfb-4ead-af48-cebe19eb1723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '9c62e95b-6e87-4a21-8c36-82658e278d68')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('9c62e95b-6e87-4a21-8c36-82658e278d68','Human Factors Subcategory','{
    "value": "Human Factors Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"a432bda1-1bfb-4ead-af48-cebe19eb1723\",\"dynamicRoot\":{\"originKey\":\"a432bda1-1bfb-4ead-af48-cebe19eb1723\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "9c62e95b-6e87-4a21-8c36-82658e278d68",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Human Factors Subcategory (Key: 9c62e95b-6e87-4a21-8c36-82658e278d68)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Human Factors Subcategory (Key: 9c62e95b-6e87-4a21-8c36-82658e278d68)';
END

-- Injury Severity (injury-severity)
-- Prevalue Source Key: 29eb69a0-0a94-4a52-ad67-d3e206d28f24
-- lookupItemFolder Content Key: a3278035-697d-4c6f-9c8f-3c3376583ea7
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'c6044b5a-a722-4f31-81ec-6d835b2ca62d')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('c6044b5a-a722-4f31-81ec-6d835b2ca62d','Injury Severity','{
    "value": "Injury Severity",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"a3278035-697d-4c6f-9c8f-3c3376583ea7\",\"dynamicRoot\":{\"originKey\":\"a3278035-697d-4c6f-9c8f-3c3376583ea7\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "c6044b5a-a722-4f31-81ec-6d835b2ca62d",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Injury Severity (Key: c6044b5a-a722-4f31-81ec-6d835b2ca62d)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Injury Severity (Key: c6044b5a-a722-4f31-81ec-6d835b2ca62d)';
END

-- Organizational Culture Subcategory (organizational-culture-subcategory)
-- Prevalue Source Key: 0dd291e2-23a6-4873-b38e-653cce03947f
-- lookupItemFolder Content Key: 1bc6a292-2cc7-4a56-95e6-f63931cd7bc1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'c73d6f07-1420-4fe9-a000-b0d5b04bb7e6')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('c73d6f07-1420-4fe9-a000-b0d5b04bb7e6','Organizational Culture Subcategory','{
    "value": "Organizational Culture Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"1bc6a292-2cc7-4a56-95e6-f63931cd7bc1\",\"dynamicRoot\":{\"originKey\":\"1bc6a292-2cc7-4a56-95e6-f63931cd7bc1\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "c73d6f07-1420-4fe9-a000-b0d5b04bb7e6",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Organizational Culture Subcategory (Key: c73d6f07-1420-4fe9-a000-b0d5b04bb7e6)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Organizational Culture Subcategory (Key: c73d6f07-1420-4fe9-a000-b0d5b04bb7e6)';
END

-- Patient Age (patient-age)
-- Prevalue Source Key: bad61c89-04b2-44e4-9d0d-306d0f26004f
-- lookupItemFolder Content Key: 4773c6df-2b95-4d1e-88d1-d2c3bc3087c0
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ef9f8538-754f-4322-925a-dee01d8242fe')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ef9f8538-754f-4322-925a-dee01d8242fe','Patient Age','{
    "value": "Patient Age",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"4773c6df-2b95-4d1e-88d1-d2c3bc3087c0\",\"dynamicRoot\":{\"originKey\":\"4773c6df-2b95-4d1e-88d1-d2c3bc3087c0\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "ef9f8538-754f-4322-925a-dee01d8242fe",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Age (Key: ef9f8538-754f-4322-925a-dee01d8242fe)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Age (Key: ef9f8538-754f-4322-925a-dee01d8242fe)';
END

-- Patient Ethnicity (patient-ethnicity)
-- Prevalue Source Key: 1de1f31e-7166-453a-8991-b3fef0f07b4c
-- lookupItemFolder Content Key: 97ae4e98-439b-42ff-84bb-4511257fe657
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3a9e1edc-3841-4b72-8902-f9c635ab3e0b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3a9e1edc-3841-4b72-8902-f9c635ab3e0b','Patient Ethnicity','{
    "value": "Patient Ethnicity",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"97ae4e98-439b-42ff-84bb-4511257fe657\",\"dynamicRoot\":{\"originKey\":\"97ae4e98-439b-42ff-84bb-4511257fe657\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "3a9e1edc-3841-4b72-8902-f9c635ab3e0b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Ethnicity (Key: 3a9e1edc-3841-4b72-8902-f9c635ab3e0b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Ethnicity (Key: 3a9e1edc-3841-4b72-8902-f9c635ab3e0b)';
END

-- Patient Language (patient-language)
-- Prevalue Source Key: 33f44312-b0b6-42ad-a2a6-aeb2766ac274
-- lookupItemFolder Content Key: 6f6ca7fb-97da-46ea-850b-93e4de7e4fb5
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ed5b04fa-0635-438b-9af1-07c1720fb852')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ed5b04fa-0635-438b-9af1-07c1720fb852','Patient Language','{
    "value": "Patient Language",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"6f6ca7fb-97da-46ea-850b-93e4de7e4fb5\",\"dynamicRoot\":{\"originKey\":\"6f6ca7fb-97da-46ea-850b-93e4de7e4fb5\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "ed5b04fa-0635-438b-9af1-07c1720fb852",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Language (Key: ed5b04fa-0635-438b-9af1-07c1720fb852)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Language (Key: ed5b04fa-0635-438b-9af1-07c1720fb852)';
END

-- Patient Race (patient-race)
-- Prevalue Source Key: a5903c46-4125-466a-94e6-54c683117f46
-- lookupItemFolder Content Key: c6d2264e-db65-4231-abe2-40620846c5e4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '8942381a-2b7f-4e52-a5b7-fe6931854ab4')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('8942381a-2b7f-4e52-a5b7-fe6931854ab4','Patient Race','{
    "value": "Patient Race",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"c6d2264e-db65-4231-abe2-40620846c5e4\",\"dynamicRoot\":{\"originKey\":\"c6d2264e-db65-4231-abe2-40620846c5e4\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "8942381a-2b7f-4e52-a5b7-fe6931854ab4",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Race (Key: 8942381a-2b7f-4e52-a5b7-fe6931854ab4)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Race (Key: 8942381a-2b7f-4e52-a5b7-fe6931854ab4)';
END

-- Patient Type (patient-type)
-- Prevalue Source Key: c024d310-e046-43d2-83b2-174b3f6c5bb1
-- lookupItemFolder Content Key: 1408d515-68ac-4568-8e0c-16115a41765b
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'dcf0c382-cbf3-48fa-9942-1f2fe917a4e1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('dcf0c382-cbf3-48fa-9942-1f2fe917a4e1','Patient Type','{
    "value": "Patient Type",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"1408d515-68ac-4568-8e0c-16115a41765b\",\"dynamicRoot\":{\"originKey\":\"1408d515-68ac-4568-8e0c-16115a41765b\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "dcf0c382-cbf3-48fa-9942-1f2fe917a4e1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Type (Key: dcf0c382-cbf3-48fa-9942-1f2fe917a4e1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Type (Key: dcf0c382-cbf3-48fa-9942-1f2fe917a4e1)';
END

-- PC2 (pc2)
-- Prevalue Source Key: f1e2d3c4-b5a6-7890-cdef-123456789abc
-- lookupItemFolder Content Key: a1b2c3d4-e5f6-7890-abcd-ef1234567890
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0144c7db-cd60-4260-937d-d2b0db02dcbc')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0144c7db-cd60-4260-937d-d2b0db02dcbc','PC2','{
    "value": "PC2",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"a1b2c3d4-e5f6-7890-abcd-ef1234567890\",\"dynamicRoot\":{\"originKey\":\"a1b2c3d4-e5f6-7890-abcd-ef1234567890\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "0144c7db-cd60-4260-937d-d2b0db02dcbc",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: PC2 (Key: 0144c7db-cd60-4260-937d-d2b0db02dcbc)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: PC2 (Key: 0144c7db-cd60-4260-937d-d2b0db02dcbc)';
END

-- Physical Environment Subcategory (physical-environment-subcategory)
-- Prevalue Source Key: 31613f08-b717-461d-bca4-5cf0d5b5bd58
-- lookupItemFolder Content Key: 98f288e9-c990-4507-8d7a-9c8907c57b5c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e0b4e38c-a4ed-432b-9a37-fbc7efb70ac7')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e0b4e38c-a4ed-432b-9a37-fbc7efb70ac7','Physical Environment Subcategory','{
    "value": "Physical Environment Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"98f288e9-c990-4507-8d7a-9c8907c57b5c\",\"dynamicRoot\":{\"originKey\":\"98f288e9-c990-4507-8d7a-9c8907c57b5c\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "e0b4e38c-a4ed-432b-9a37-fbc7efb70ac7",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Physical Environment Subcategory (Key: e0b4e38c-a4ed-432b-9a37-fbc7efb70ac7)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Physical Environment Subcategory (Key: e0b4e38c-a4ed-432b-9a37-fbc7efb70ac7)';
END

-- Pressure Ulcer Stage (pressure-ulcer-stage)
-- Prevalue Source Key: c7b6aaec-7a03-41c9-91c5-81b570689943
-- lookupItemFolder Content Key: 009b7040-4ba2-4c2f-a6c0-532d714a2fe4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '36874f4e-4034-47fd-9c2c-9ae27e92c514')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('36874f4e-4034-47fd-9c2c-9ae27e92c514','Pressure Ulcer Stage','{
    "value": "Pressure Ulcer Stage",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"009b7040-4ba2-4c2f-a6c0-532d714a2fe4\",\"dynamicRoot\":{\"originKey\":\"009b7040-4ba2-4c2f-a6c0-532d714a2fe4\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "36874f4e-4034-47fd-9c2c-9ae27e92c514",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Pressure Ulcer Stage (Key: 36874f4e-4034-47fd-9c2c-9ae27e92c514)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Pressure Ulcer Stage (Key: 36874f4e-4034-47fd-9c2c-9ae27e92c514)';
END

-- Procedure Category (procedure-category)
-- Prevalue Source Key: 5ce87c2d-d0b1-4124-a030-876a0ca97fb9
-- lookupItemFolder Content Key: a438b819-0c9a-4fd8-a120-007f1b4c86f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4ee75f37-34f8-47e3-866d-d1663aad5620')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4ee75f37-34f8-47e3-866d-d1663aad5620','Procedure Category','{
    "value": "Procedure Category",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"a438b819-0c9a-4fd8-a120-007f1b4c86f9\",\"dynamicRoot\":{\"originKey\":\"a438b819-0c9a-4fd8-a120-007f1b4c86f9\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "4ee75f37-34f8-47e3-866d-d1663aad5620",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Category (Key: 4ee75f37-34f8-47e3-866d-d1663aad5620)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Category (Key: 4ee75f37-34f8-47e3-866d-d1663aad5620)';
END

-- Procedure Type (procedure-type)
-- Prevalue Source Key: ef2a7995-af9b-4b24-8224-0e90b77d0e8a
-- lookupItemFolder Content Key: c85b23f5-9fb4-4c6d-a984-e51eb86782f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '8bff5743-e36e-4f14-a91f-c753eb482188')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('8bff5743-e36e-4f14-a91f-c753eb482188','Procedure Type','{
    "value": "Procedure Type",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"c85b23f5-9fb4-4c6d-a984-e51eb86782f9\",\"dynamicRoot\":{\"originKey\":\"c85b23f5-9fb4-4c6d-a984-e51eb86782f9\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "8bff5743-e36e-4f14-a91f-c753eb482188",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Type (Key: 8bff5743-e36e-4f14-a91f-c753eb482188)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Type (Key: 8bff5743-e36e-4f14-a91f-c753eb482188)';
END

-- Process Stage (process-stage)
-- Prevalue Source Key: 9c2a994d-b12a-4197-bbd3-a81fa800efea
-- lookupItemFolder Content Key: 58387e35-9969-4514-afc2-9e4bbdd679ab
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '36541735-c4c6-43cd-8716-120819d848e6')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('36541735-c4c6-43cd-8716-120819d848e6','Process Stage','{
    "value": "Process Stage",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"58387e35-9969-4514-afc2-9e4bbdd679ab\",\"dynamicRoot\":{\"originKey\":\"58387e35-9969-4514-afc2-9e4bbdd679ab\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "36541735-c4c6-43cd-8716-120819d848e6",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Process Stage (Key: 36541735-c4c6-43cd-8716-120819d848e6)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Process Stage (Key: 36541735-c4c6-43cd-8716-120819d848e6)';
END

-- Retained Object Type (retained-object-type)
-- Prevalue Source Key: 908bf913-b1dd-489b-aa70-c8ab51ae62da
-- lookupItemFolder Content Key: e5343daa-7591-4654-b233-f26f2555beba
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'af06a3fd-f646-42cf-b8c7-5107ee5a7b8d')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('af06a3fd-f646-42cf-b8c7-5107ee5a7b8d','Retained Object Type','{
    "value": "Retained Object Type",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"e5343daa-7591-4654-b233-f26f2555beba\",\"dynamicRoot\":{\"originKey\":\"e5343daa-7591-4654-b233-f26f2555beba\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "af06a3fd-f646-42cf-b8c7-5107ee5a7b8d",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Retained Object Type (Key: af06a3fd-f646-42cf-b8c7-5107ee5a7b8d)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Retained Object Type (Key: af06a3fd-f646-42cf-b8c7-5107ee5a7b8d)';
END

-- Root Cause Category (root-cause-category)
-- Prevalue Source Key: ce0b30dd-10c8-4f82-a6b7-ba9a6457df05
-- lookupItemFolder Content Key: 4d5e04e7-9f1e-468b-80db-291378f98188
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3012b313-0220-4377-b622-f585791d9dae')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3012b313-0220-4377-b622-f585791d9dae','Root Cause Category','{
    "value": "Root Cause Category",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"4d5e04e7-9f1e-468b-80db-291378f98188\",\"dynamicRoot\":{\"originKey\":\"4d5e04e7-9f1e-468b-80db-291378f98188\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "3012b313-0220-4377-b622-f585791d9dae",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Root Cause Category (Key: 3012b313-0220-4377-b622-f585791d9dae)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Root Cause Category (Key: 3012b313-0220-4377-b622-f585791d9dae)';
END

-- Rules Policies Procedures Subcategory (rules-policies-procedures-subcategory)
-- Prevalue Source Key: e9da1a32-0eff-41c9-b301-45796eafbc12
-- lookupItemFolder Content Key: 08a42eb4-04ed-4f11-9b12-8001490c8c72
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'c89f2dcf-7719-47f6-96c5-8799cbaa1d1d')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('c89f2dcf-7719-47f6-96c5-8799cbaa1d1d','Rules Policies Procedures Subcategory','{
    "value": "Rules Policies Procedures Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"08a42eb4-04ed-4f11-9b12-8001490c8c72\",\"dynamicRoot\":{\"originKey\":\"08a42eb4-04ed-4f11-9b12-8001490c8c72\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "c89f2dcf-7719-47f6-96c5-8799cbaa1d1d",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Rules Policies Procedures Subcategory (Key: c89f2dcf-7719-47f6-96c5-8799cbaa1d1d)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Rules Policies Procedures Subcategory (Key: c89f2dcf-7719-47f6-96c5-8799cbaa1d1d)';
END

-- Soft Good Type (soft-good-type)
-- Prevalue Source Key: 200f86f3-6a27-48c0-aa8d-2a7965dd1652
-- lookupItemFolder Content Key: 051034cf-a80e-4e5f-8870-2d0a26e57212
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '567cdf4d-e566-4825-955d-5b54ec346a92')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('567cdf4d-e566-4825-955d-5b54ec346a92','Soft Good Type','{
    "value": "Soft Good Type",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"051034cf-a80e-4e5f-8870-2d0a26e57212\",\"dynamicRoot\":{\"originKey\":\"051034cf-a80e-4e5f-8870-2d0a26e57212\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "567cdf4d-e566-4825-955d-5b54ec346a92",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Soft Good Type (Key: 567cdf4d-e566-4825-955d-5b54ec346a92)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Soft Good Type (Key: 567cdf4d-e566-4825-955d-5b54ec346a92)';
END

-- Specimen Contributing Factors (specimen-contributing-factors)
-- Prevalue Source Key: 7abc3231-4bd2-440b-8564-07e947fda423
-- lookupItemFolder Content Key: 1582f513-50f2-4967-a78a-518297f19b4c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '10742da6-a1b2-4b25-ae16-f45d3a0c1de7')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('10742da6-a1b2-4b25-ae16-f45d3a0c1de7','Specimen Contributing Factors','{
    "value": "Specimen Contributing Factors",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"1582f513-50f2-4967-a78a-518297f19b4c\",\"dynamicRoot\":{\"originKey\":\"1582f513-50f2-4967-a78a-518297f19b4c\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "10742da6-a1b2-4b25-ae16-f45d3a0c1de7",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Contributing Factors (Key: 10742da6-a1b2-4b25-ae16-f45d3a0c1de7)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Contributing Factors (Key: 10742da6-a1b2-4b25-ae16-f45d3a0c1de7)';
END

-- Specimen Loss Location (specimen-loss-location)
-- Prevalue Source Key: a71fbaad-9522-47d7-88fb-33581a1eedb3
-- lookupItemFolder Content Key: 380eab02-1b26-480c-932f-c01704e43697
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2b5b818c-6e45-48ef-87d2-3e03a06dbe7e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2b5b818c-6e45-48ef-87d2-3e03a06dbe7e','Specimen Loss Location','{
    "value": "Specimen Loss Location",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"380eab02-1b26-480c-932f-c01704e43697\",\"dynamicRoot\":{\"originKey\":\"380eab02-1b26-480c-932f-c01704e43697\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "2b5b818c-6e45-48ef-87d2-3e03a06dbe7e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Location (Key: 2b5b818c-6e45-48ef-87d2-3e03a06dbe7e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Location (Key: 2b5b818c-6e45-48ef-87d2-3e03a06dbe7e)';
END

-- Specimen Loss Reason (specimen-loss-reason)
-- Prevalue Source Key: a4c12cf8-92f7-454a-a4c4-7696246393c6
-- lookupItemFolder Content Key: 17594f52-f230-427d-a9ac-d7b42f6dea49
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a3bd26c3-d271-48de-b9e7-a2c28ad04d56')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a3bd26c3-d271-48de-b9e7-a2c28ad04d56','Specimen Loss Reason','{
    "value": "Specimen Loss Reason",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"17594f52-f230-427d-a9ac-d7b42f6dea49\",\"dynamicRoot\":{\"originKey\":\"17594f52-f230-427d-a9ac-d7b42f6dea49\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "a3bd26c3-d271-48de-b9e7-a2c28ad04d56",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Reason (Key: a3bd26c3-d271-48de-b9e7-a2c28ad04d56)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Reason (Key: a3bd26c3-d271-48de-b9e7-a2c28ad04d56)';
END

-- Stage When First Identified (stage-when-first-identified)
-- Prevalue Source Key: f9fdff66-b182-4f9c-84dc-35643bbad216
-- lookupItemFolder Content Key: 2325b7a3-e1e1-42ad-964b-468241afa739
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '21957a6f-3d91-4110-8e76-08a099325ade')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('21957a6f-3d91-4110-8e76-08a099325ade','Stage When First Identified','{
    "value": "Stage When First Identified",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"2325b7a3-e1e1-42ad-964b-468241afa739\",\"dynamicRoot\":{\"originKey\":\"2325b7a3-e1e1-42ad-964b-468241afa739\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "21957a6f-3d91-4110-8e76-08a099325ade",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Stage When First Identified (Key: 21957a6f-3d91-4110-8e76-08a099325ade)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Stage When First Identified (Key: 21957a6f-3d91-4110-8e76-08a099325ade)';
END

-- Toileting Fall Location (toileting-fall-location)
-- Prevalue Source Key: dbc58934-6b77-4a3a-96e9-6e532b1ef6f8
-- lookupItemFolder Content Key: 47062b76-1f20-4575-94e0-b3869c4ac01c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2f9215fd-cbcb-44ae-8651-bfa20429f7d9')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2f9215fd-cbcb-44ae-8651-bfa20429f7d9','Toileting Fall Location','{
    "value": "Toileting Fall Location",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"47062b76-1f20-4575-94e0-b3869c4ac01c\",\"dynamicRoot\":{\"originKey\":\"47062b76-1f20-4575-94e0-b3869c4ac01c\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "2f9215fd-cbcb-44ae-8651-bfa20429f7d9",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Toileting Fall Location (Key: 2f9215fd-cbcb-44ae-8651-bfa20429f7d9)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Toileting Fall Location (Key: 2f9215fd-cbcb-44ae-8651-bfa20429f7d9)';
END

-- Training Education Subcategory (training-education-subcategory)
-- Prevalue Source Key: a2424fee-e264-43e0-982b-fa2e7c03af72
-- lookupItemFolder Content Key: abeacbc2-1691-417b-b637-522a89a28458
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3914b39d-b896-4b4b-9946-4b264c9cdcbe')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3914b39d-b896-4b4b-9946-4b264c9cdcbe','Training Education Subcategory','{
    "value": "Training Education Subcategory",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"abeacbc2-1691-417b-b637-522a89a28458\",\"dynamicRoot\":{\"originKey\":\"abeacbc2-1691-417b-b637-522a89a28458\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "3914b39d-b896-4b4b-9946-4b264c9cdcbe",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Training Education Subcategory (Key: 3914b39d-b896-4b4b-9946-4b264c9cdcbe)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Training Education Subcategory (Key: 3914b39d-b896-4b4b-9946-4b264c9cdcbe)';
END

-- Type Of Harm (type-of-harm)
-- Prevalue Source Key: 61ae4c35-5ad7-4a1f-817f-d0a6099ba49c
-- lookupItemFolder Content Key: 30369262-38b7-4549-9917-f4a2f3e1b29d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '1684a302-7590-4cf9-9a1d-97e073c6740a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('1684a302-7590-4cf9-9a1d-97e073c6740a','Type Of Harm','{
    "value": "Type Of Harm",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"30369262-38b7-4549-9917-f4a2f3e1b29d\",\"dynamicRoot\":{\"originKey\":\"30369262-38b7-4549-9917-f4a2f3e1b29d\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "1684a302-7590-4cf9-9a1d-97e073c6740a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Type Of Harm (Key: 1684a302-7590-4cf9-9a1d-97e073c6740a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Type Of Harm (Key: 1684a302-7590-4cf9-9a1d-97e073c6740a)';
END

-- Underlying Conditions (underlying-conditions)
-- Prevalue Source Key: 7f4c7fad-650c-4968-b6b8-725456225644
-- lookupItemFolder Content Key: 670d09fc-d986-48de-8298-a68f6fdba8af
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f3e1984b-89b6-4c58-b0ff-55e25d8c2a62')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f3e1984b-89b6-4c58-b0ff-55e25d8c2a62','Underlying Conditions','{
    "value": "Underlying Conditions",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"670d09fc-d986-48de-8298-a68f6fdba8af\",\"dynamicRoot\":{\"originKey\":\"670d09fc-d986-48de-8298-a68f6fdba8af\",\"originAlias\":\"ByKey\"}}", 
        "UseCurrentPage": "False",
        "DocType": "lookupItem",
        "ValueField": "lookupValue",
        "CaptionField": "",
        "ListGrandChildren": "False",
        "OrderBy": "Node order"
    },
    "fieldPreValueSourceTypeId": "de996870-c45a-11de-8a39-0800200c9a66",
    "cachePrevaluesFor": "-00:00:00.0010000",
    "id": 8,
    "key": "f3e1984b-89b6-4c58-b0ff-55e25d8c2a62",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Underlying Conditions (Key: f3e1984b-89b6-4c58-b0ff-55e25d8c2a62)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Underlying Conditions (Key: f3e1984b-89b6-4c58-b0ff-55e25d8c2a62)';
END

-- Complete transaction
IF @ErrorCount = 0
BEGIN
    COMMIT TRANSACTION;
    PRINT 'All UFPrevalueSource records processed successfully.';
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
    PRINT 'Transaction rolled back due to errors.';
END
