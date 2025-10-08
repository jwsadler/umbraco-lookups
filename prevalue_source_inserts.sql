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
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a0e53cdb-22c0-406b-96d6-0c8c02f9efad')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a0e53cdb-22c0-406b-96d6-0c8c02f9efad','Body Site','{
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
    "key": "a0e53cdb-22c0-406b-96d6-0c8c02f9efad",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Body Site (Key: a0e53cdb-22c0-406b-96d6-0c8c02f9efad)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Body Site (Key: a0e53cdb-22c0-406b-96d6-0c8c02f9efad)';
END

-- Cap Methodology (cap-methodology)
-- Prevalue Source Key: b1f9ce69-5a1f-4ff8-b553-b62472f8bf58
-- lookupItemFolder Content Key: c072b5b3-3989-45fa-b5c7-fcd84a7f2978
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a8f0abd4-5132-405c-bb78-087be490bff7')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a8f0abd4-5132-405c-bb78-087be490bff7','Cap Methodology','{
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
    "key": "a8f0abd4-5132-405c-bb78-087be490bff7",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Cap Methodology (Key: a8f0abd4-5132-405c-bb78-087be490bff7)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Cap Methodology (Key: a8f0abd4-5132-405c-bb78-087be490bff7)';
END

-- Communication Breakdown Point (communication-breakdown-point)
-- Prevalue Source Key: f2e4b0a9-294e-44f7-b731-b0dc898fd7c0
-- lookupItemFolder Content Key: 335d23fe-ffc3-4014-9f06-16f87ecc6aae
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a4124d12-6b5a-4943-b42f-4f7640afd6d8')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a4124d12-6b5a-4943-b42f-4f7640afd6d8','Communication Breakdown Point','{
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
    "key": "a4124d12-6b5a-4943-b42f-4f7640afd6d8",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Breakdown Point (Key: a4124d12-6b5a-4943-b42f-4f7640afd6d8)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Breakdown Point (Key: a4124d12-6b5a-4943-b42f-4f7640afd6d8)';
END

-- Communication Failure Timing (communication-failure-timing)
-- Prevalue Source Key: ab2f4085-0f43-419f-938f-9c8071ff2c6d
-- lookupItemFolder Content Key: 73a96b5c-226e-4db8-8cb0-7e7730cf39b1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ff1d3852-3214-45fd-b539-964e384df08d')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ff1d3852-3214-45fd-b539-964e384df08d','Communication Failure Timing','{
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
    "key": "ff1d3852-3214-45fd-b539-964e384df08d",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Failure Timing (Key: ff1d3852-3214-45fd-b539-964e384df08d)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Failure Timing (Key: ff1d3852-3214-45fd-b539-964e384df08d)';
END

-- Communication Information Subcategory (communication-information-subcategory)
-- Prevalue Source Key: 86cbdeb4-0e82-4192-ba9d-6a1b36b20ad2
-- lookupItemFolder Content Key: 4c629505-6240-4f6e-a9c5-f24538cb4cdf
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a0787b33-de83-4154-a091-1fbfceefff75')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a0787b33-de83-4154-a091-1fbfceefff75','Communication Information Subcategory','{
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
    "key": "a0787b33-de83-4154-a091-1fbfceefff75",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Information Subcategory (Key: a0787b33-de83-4154-a091-1fbfceefff75)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Information Subcategory (Key: a0787b33-de83-4154-a091-1fbfceefff75)';
END

-- Corrective Action Intervention (corrective-action-intervention)
-- Prevalue Source Key: 9dbd25e3-d624-4c17-a376-2467f56de5fb
-- lookupItemFolder Content Key: 284098bb-a6cb-4a6e-bdf0-56cb8a17e723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0f6f9b7b-7ecb-40df-9af7-20975b224ce5')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0f6f9b7b-7ecb-40df-9af7-20975b224ce5','Corrective Action Intervention','{
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
    "key": "0f6f9b7b-7ecb-40df-9af7-20975b224ce5",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Corrective Action Intervention (Key: 0f6f9b7b-7ecb-40df-9af7-20975b224ce5)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Corrective Action Intervention (Key: 0f6f9b7b-7ecb-40df-9af7-20975b224ce5)';
END

-- Device Category (device-category)
-- Prevalue Source Key: 87772cef-93ce-462a-9a0c-f4f56f62907b
-- lookupItemFolder Content Key: cd8d7f50-2860-4bf4-a49d-11d435bf6001
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '93600674-d650-4f69-baac-fbd9f36512bc')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('93600674-d650-4f69-baac-fbd9f36512bc','Device Category','{
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
    "key": "93600674-d650-4f69-baac-fbd9f36512bc",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Device Category (Key: 93600674-d650-4f69-baac-fbd9f36512bc)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Device Category (Key: 93600674-d650-4f69-baac-fbd9f36512bc)';
END

-- Electronic Communication Subcategory (electronic-communication-subcategory)
-- Prevalue Source Key: 25b745f5-712d-4cad-b340-d805d66ea42a
-- lookupItemFolder Content Key: 6ae227a2-4990-4b1e-814e-82705dbe87a1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4bc79d65-838c-461a-93aa-dbf2563b2883')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4bc79d65-838c-461a-93aa-dbf2563b2883','Electronic Communication Subcategory','{
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
    "key": "4bc79d65-838c-461a-93aa-dbf2563b2883",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Electronic Communication Subcategory (Key: 4bc79d65-838c-461a-93aa-dbf2563b2883)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Electronic Communication Subcategory (Key: 4bc79d65-838c-461a-93aa-dbf2563b2883)';
END

-- Error Type (error-type)
-- Prevalue Source Key: 07159791-5e49-496d-9b61-efe7c1fa496e
-- lookupItemFolder Content Key: 3f21c1a2-40be-438d-9f77-dfa3fe10afd8
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '96600862-0e47-4223-a3df-9ff6457effec')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('96600862-0e47-4223-a3df-9ff6457effec','Error Type','{
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
    "key": "96600862-0e47-4223-a3df-9ff6457effec",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Error Type (Key: 96600862-0e47-4223-a3df-9ff6457effec)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Error Type (Key: 96600862-0e47-4223-a3df-9ff6457effec)';
END

-- Event Location (event-location)
-- Prevalue Source Key: 5d641e0d-f5f7-4805-884b-8fedada26b1d
-- lookupItemFolder Content Key: e9b50e5e-c8ec-450f-8d57-191a4e945404
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '86b6d6e3-a24a-4730-a2d2-fd77d3960a77')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('86b6d6e3-a24a-4730-a2d2-fd77d3960a77','Event Location','{
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
    "key": "86b6d6e3-a24a-4730-a2d2-fd77d3960a77",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Location (Key: 86b6d6e3-a24a-4730-a2d2-fd77d3960a77)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Location (Key: 86b6d6e3-a24a-4730-a2d2-fd77d3960a77)';
END

-- Event Time (event-time)
-- Prevalue Source Key: 58d722ec-1d54-4219-843e-6367bcf6477a
-- lookupItemFolder Content Key: 93034def-dbff-434a-a221-98a5bb090b2d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '7b7c9237-52a2-4359-bac5-3cd8b5982664')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('7b7c9237-52a2-4359-bac5-3cd8b5982664','Event Time','{
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
    "key": "7b7c9237-52a2-4359-bac5-3cd8b5982664",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Time (Key: 7b7c9237-52a2-4359-bac5-3cd8b5982664)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Time (Key: 7b7c9237-52a2-4359-bac5-3cd8b5982664)';
END

-- Fall Injury (fall-injury)
-- Prevalue Source Key: c38740d4-fc73-464f-8e3d-2292b9fc643a
-- lookupItemFolder Content Key: d10e2c39-3ee4-433e-bc87-62f46faabd9e
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '74454075-2045-4f7d-9f9f-e2917ceed65f')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('74454075-2045-4f7d-9f9f-e2917ceed65f','Fall Injury','{
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
    "key": "74454075-2045-4f7d-9f9f-e2917ceed65f",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Injury (Key: 74454075-2045-4f7d-9f9f-e2917ceed65f)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Injury (Key: 74454075-2045-4f7d-9f9f-e2917ceed65f)';
END

-- Fall Location (fall-location)
-- Prevalue Source Key: d9ed7411-590c-44c8-af66-9677625b93b2
-- lookupItemFolder Content Key: 0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '416a68a9-1894-44af-a323-c6547f38e9cd')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('416a68a9-1894-44af-a323-c6547f38e9cd','Fall Location','{
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
    "key": "416a68a9-1894-44af-a323-c6547f38e9cd",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Location (Key: 416a68a9-1894-44af-a323-c6547f38e9cd)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Location (Key: 416a68a9-1894-44af-a323-c6547f38e9cd)';
END

-- Fall Prevention Measures (fall-prevention-measures)
-- Prevalue Source Key: f7f35f6c-9ba5-4f8a-b7e5-40b26e80b33c
-- lookupItemFolder Content Key: 2e6b60f7-196d-4c56-b5bc-ea2945623d8d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '74f0dca9-f662-469a-9d1f-c1637138c0dd')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('74f0dca9-f662-469a-9d1f-c1637138c0dd','Fall Prevention Measures','{
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
    "key": "74f0dca9-f662-469a-9d1f-c1637138c0dd",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Prevention Measures (Key: 74f0dca9-f662-469a-9d1f-c1637138c0dd)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Prevention Measures (Key: 74f0dca9-f662-469a-9d1f-c1637138c0dd)';
END

-- Harm Type (harm-type)
-- Prevalue Source Key: bb6b21d4-2a6e-4e56-b8a5-706582171c67
-- lookupItemFolder Content Key: d2ae1785-c0e0-4409-8d89-6a1c9dce999a
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '363ea36f-d2ba-40dd-99d0-c66393c86bba')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('363ea36f-d2ba-40dd-99d0-c66393c86bba','Harm Type','{
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
    "key": "363ea36f-d2ba-40dd-99d0-c66393c86bba",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Harm Type (Key: 363ea36f-d2ba-40dd-99d0-c66393c86bba)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Harm Type (Key: 363ea36f-d2ba-40dd-99d0-c66393c86bba)';
END

-- Human Factors Subcategory (human-factors-subcategory)
-- Prevalue Source Key: c7a2f14c-248a-4f1c-81ae-271662f1ef89
-- lookupItemFolder Content Key: a432bda1-1bfb-4ead-af48-cebe19eb1723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0ee4f727-d0d8-4e78-995b-bd743f650b41')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0ee4f727-d0d8-4e78-995b-bd743f650b41','Human Factors Subcategory','{
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
    "key": "0ee4f727-d0d8-4e78-995b-bd743f650b41",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Human Factors Subcategory (Key: 0ee4f727-d0d8-4e78-995b-bd743f650b41)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Human Factors Subcategory (Key: 0ee4f727-d0d8-4e78-995b-bd743f650b41)';
END

-- Injury Severity (injury-severity)
-- Prevalue Source Key: 29eb69a0-0a94-4a52-ad67-d3e206d28f24
-- lookupItemFolder Content Key: a3278035-697d-4c6f-9c8f-3c3376583ea7
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '7ee52d22-b5a7-4749-b36e-cabe64d6a07c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('7ee52d22-b5a7-4749-b36e-cabe64d6a07c','Injury Severity','{
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
    "key": "7ee52d22-b5a7-4749-b36e-cabe64d6a07c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Injury Severity (Key: 7ee52d22-b5a7-4749-b36e-cabe64d6a07c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Injury Severity (Key: 7ee52d22-b5a7-4749-b36e-cabe64d6a07c)';
END

-- Organizational Culture Subcategory (organizational-culture-subcategory)
-- Prevalue Source Key: 0dd291e2-23a6-4873-b38e-653cce03947f
-- lookupItemFolder Content Key: 1bc6a292-2cc7-4a56-95e6-f63931cd7bc1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '361bd1d1-ba0f-4dab-b6b3-9274c2f8ba97')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('361bd1d1-ba0f-4dab-b6b3-9274c2f8ba97','Organizational Culture Subcategory','{
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
    "key": "361bd1d1-ba0f-4dab-b6b3-9274c2f8ba97",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Organizational Culture Subcategory (Key: 361bd1d1-ba0f-4dab-b6b3-9274c2f8ba97)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Organizational Culture Subcategory (Key: 361bd1d1-ba0f-4dab-b6b3-9274c2f8ba97)';
END

-- Patient Age (patient-age)
-- Prevalue Source Key: bad61c89-04b2-44e4-9d0d-306d0f26004f
-- lookupItemFolder Content Key: 4773c6df-2b95-4d1e-88d1-d2c3bc3087c0
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e9124780-2091-40d8-b15f-5981622198ec')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e9124780-2091-40d8-b15f-5981622198ec','Patient Age','{
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
    "key": "e9124780-2091-40d8-b15f-5981622198ec",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Age (Key: e9124780-2091-40d8-b15f-5981622198ec)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Age (Key: e9124780-2091-40d8-b15f-5981622198ec)';
END

-- Patient Ethnicity (patient-ethnicity)
-- Prevalue Source Key: 1de1f31e-7166-453a-8991-b3fef0f07b4c
-- lookupItemFolder Content Key: 97ae4e98-439b-42ff-84bb-4511257fe657
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '7c445715-88ef-41d7-b135-c1886c47dc74')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('7c445715-88ef-41d7-b135-c1886c47dc74','Patient Ethnicity','{
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
    "key": "7c445715-88ef-41d7-b135-c1886c47dc74",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Ethnicity (Key: 7c445715-88ef-41d7-b135-c1886c47dc74)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Ethnicity (Key: 7c445715-88ef-41d7-b135-c1886c47dc74)';
END

-- Patient Language (patient-language)
-- Prevalue Source Key: 33f44312-b0b6-42ad-a2a6-aeb2766ac274
-- lookupItemFolder Content Key: 6f6ca7fb-97da-46ea-850b-93e4de7e4fb5
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '11e06867-23ad-47ca-88ce-7dd15b8cbd8f')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('11e06867-23ad-47ca-88ce-7dd15b8cbd8f','Patient Language','{
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
    "key": "11e06867-23ad-47ca-88ce-7dd15b8cbd8f",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Language (Key: 11e06867-23ad-47ca-88ce-7dd15b8cbd8f)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Language (Key: 11e06867-23ad-47ca-88ce-7dd15b8cbd8f)';
END

-- Patient Race (patient-race)
-- Prevalue Source Key: a5903c46-4125-466a-94e6-54c683117f46
-- lookupItemFolder Content Key: c6d2264e-db65-4231-abe2-40620846c5e4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'fc62a3c5-cbe3-4a42-99b8-2c01f55c8e75')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('fc62a3c5-cbe3-4a42-99b8-2c01f55c8e75','Patient Race','{
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
    "key": "fc62a3c5-cbe3-4a42-99b8-2c01f55c8e75",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Race (Key: fc62a3c5-cbe3-4a42-99b8-2c01f55c8e75)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Race (Key: fc62a3c5-cbe3-4a42-99b8-2c01f55c8e75)';
END

-- Patient Type (patient-type)
-- Prevalue Source Key: c024d310-e046-43d2-83b2-174b3f6c5bb1
-- lookupItemFolder Content Key: 1408d515-68ac-4568-8e0c-16115a41765b
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2430280a-e8ba-4dc0-80d3-abbc80ccece1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2430280a-e8ba-4dc0-80d3-abbc80ccece1','Patient Type','{
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
    "key": "2430280a-e8ba-4dc0-80d3-abbc80ccece1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Type (Key: 2430280a-e8ba-4dc0-80d3-abbc80ccece1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Type (Key: 2430280a-e8ba-4dc0-80d3-abbc80ccece1)';
END

-- PC1 (pc1)
-- Prevalue Source Key: g2f3e4d5-c6b7-8902-cdef-234567890bcd
-- lookupItemFolder Content Key: b2c3d4e5-f6a7-8901-bcde-f23456789abc
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e19c6d11-62c2-46e7-9492-87a741643334')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e19c6d11-62c2-46e7-9492-87a741643334','PC1','{
    "value": "PC1",
    "createdBy": -1,
    "updatedBy": -1,
    "settings": {
        "RootNode": "{\"type\":\"content\",\"id\":\"b2c3d4e5-f6a7-8901-bcde-f23456789abc\",\"dynamicRoot\":{\"originKey\":\"b2c3d4e5-f6a7-8901-bcde-f23456789abc\",\"originAlias\":\"ByKey\"}}", 
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
    "key": "e19c6d11-62c2-46e7-9492-87a741643334",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: PC1 (Key: e19c6d11-62c2-46e7-9492-87a741643334)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: PC1 (Key: e19c6d11-62c2-46e7-9492-87a741643334)';
END

-- PC2 (pc2)
-- Prevalue Source Key: f1e2d3c4-b5a6-7890-cdef-123456789abc
-- lookupItemFolder Content Key: a1b2c3d4-e5f6-7890-abcd-ef1234567890
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '30aca614-eaf4-4f29-9289-1e88dde85a77')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('30aca614-eaf4-4f29-9289-1e88dde85a77','PC2','{
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
    "key": "30aca614-eaf4-4f29-9289-1e88dde85a77",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: PC2 (Key: 30aca614-eaf4-4f29-9289-1e88dde85a77)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: PC2 (Key: 30aca614-eaf4-4f29-9289-1e88dde85a77)';
END

-- Physical Environment Subcategory (physical-environment-subcategory)
-- Prevalue Source Key: 31613f08-b717-461d-bca4-5cf0d5b5bd58
-- lookupItemFolder Content Key: 98f288e9-c990-4507-8d7a-9c8907c57b5c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '16e4077c-6b99-43ae-8569-b3c41586acd4')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('16e4077c-6b99-43ae-8569-b3c41586acd4','Physical Environment Subcategory','{
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
    "key": "16e4077c-6b99-43ae-8569-b3c41586acd4",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Physical Environment Subcategory (Key: 16e4077c-6b99-43ae-8569-b3c41586acd4)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Physical Environment Subcategory (Key: 16e4077c-6b99-43ae-8569-b3c41586acd4)';
END

-- Pressure Ulcer Stage (pressure-ulcer-stage)
-- Prevalue Source Key: c7b6aaec-7a03-41c9-91c5-81b570689943
-- lookupItemFolder Content Key: 009b7040-4ba2-4c2f-a6c0-532d714a2fe4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '8ae36852-c726-41fd-8422-f7d5311b647a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('8ae36852-c726-41fd-8422-f7d5311b647a','Pressure Ulcer Stage','{
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
    "key": "8ae36852-c726-41fd-8422-f7d5311b647a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Pressure Ulcer Stage (Key: 8ae36852-c726-41fd-8422-f7d5311b647a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Pressure Ulcer Stage (Key: 8ae36852-c726-41fd-8422-f7d5311b647a)';
END

-- Procedure Category (procedure-category)
-- Prevalue Source Key: 5ce87c2d-d0b1-4124-a030-876a0ca97fb9
-- lookupItemFolder Content Key: a438b819-0c9a-4fd8-a120-007f1b4c86f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2bea70d1-8497-4486-835b-07bf25b6d818')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2bea70d1-8497-4486-835b-07bf25b6d818','Procedure Category','{
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
    "key": "2bea70d1-8497-4486-835b-07bf25b6d818",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Category (Key: 2bea70d1-8497-4486-835b-07bf25b6d818)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Category (Key: 2bea70d1-8497-4486-835b-07bf25b6d818)';
END

-- Procedure Type (procedure-type)
-- Prevalue Source Key: ef2a7995-af9b-4b24-8224-0e90b77d0e8a
-- lookupItemFolder Content Key: c85b23f5-9fb4-4c6d-a984-e51eb86782f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2ab04c65-ad38-41ef-a799-d9a8c776f88c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2ab04c65-ad38-41ef-a799-d9a8c776f88c','Procedure Type','{
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
    "key": "2ab04c65-ad38-41ef-a799-d9a8c776f88c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Type (Key: 2ab04c65-ad38-41ef-a799-d9a8c776f88c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Type (Key: 2ab04c65-ad38-41ef-a799-d9a8c776f88c)';
END

-- Process Stage (process-stage)
-- Prevalue Source Key: 9c2a994d-b12a-4197-bbd3-a81fa800efea
-- lookupItemFolder Content Key: 58387e35-9969-4514-afc2-9e4bbdd679ab
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3dfe95a7-bd1f-400a-a006-938d11195f3c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3dfe95a7-bd1f-400a-a006-938d11195f3c','Process Stage','{
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
    "key": "3dfe95a7-bd1f-400a-a006-938d11195f3c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Process Stage (Key: 3dfe95a7-bd1f-400a-a006-938d11195f3c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Process Stage (Key: 3dfe95a7-bd1f-400a-a006-938d11195f3c)';
END

-- Retained Object Type (retained-object-type)
-- Prevalue Source Key: 908bf913-b1dd-489b-aa70-c8ab51ae62da
-- lookupItemFolder Content Key: e5343daa-7591-4654-b233-f26f2555beba
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2d210f5c-6931-4bfc-8bd0-9458aeb22f4b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2d210f5c-6931-4bfc-8bd0-9458aeb22f4b','Retained Object Type','{
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
    "key": "2d210f5c-6931-4bfc-8bd0-9458aeb22f4b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Retained Object Type (Key: 2d210f5c-6931-4bfc-8bd0-9458aeb22f4b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Retained Object Type (Key: 2d210f5c-6931-4bfc-8bd0-9458aeb22f4b)';
END

-- Root Cause Category (root-cause-category)
-- Prevalue Source Key: ce0b30dd-10c8-4f82-a6b7-ba9a6457df05
-- lookupItemFolder Content Key: 4d5e04e7-9f1e-468b-80db-291378f98188
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '627dc18f-a9fb-447d-9546-ae3fb3e28970')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('627dc18f-a9fb-447d-9546-ae3fb3e28970','Root Cause Category','{
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
    "key": "627dc18f-a9fb-447d-9546-ae3fb3e28970",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Root Cause Category (Key: 627dc18f-a9fb-447d-9546-ae3fb3e28970)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Root Cause Category (Key: 627dc18f-a9fb-447d-9546-ae3fb3e28970)';
END

-- Rules Policies Procedures Subcategory (rules-policies-procedures-subcategory)
-- Prevalue Source Key: e9da1a32-0eff-41c9-b301-45796eafbc12
-- lookupItemFolder Content Key: 08a42eb4-04ed-4f11-9b12-8001490c8c72
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '82d74c4f-a49a-4233-804b-a55049249002')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('82d74c4f-a49a-4233-804b-a55049249002','Rules Policies Procedures Subcategory','{
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
    "key": "82d74c4f-a49a-4233-804b-a55049249002",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Rules Policies Procedures Subcategory (Key: 82d74c4f-a49a-4233-804b-a55049249002)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Rules Policies Procedures Subcategory (Key: 82d74c4f-a49a-4233-804b-a55049249002)';
END

-- Soft Good Type (soft-good-type)
-- Prevalue Source Key: 200f86f3-6a27-48c0-aa8d-2a7965dd1652
-- lookupItemFolder Content Key: 051034cf-a80e-4e5f-8870-2d0a26e57212
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f77cbc1d-83b0-4fb5-b612-3de335f03b3b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f77cbc1d-83b0-4fb5-b612-3de335f03b3b','Soft Good Type','{
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
    "key": "f77cbc1d-83b0-4fb5-b612-3de335f03b3b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Soft Good Type (Key: f77cbc1d-83b0-4fb5-b612-3de335f03b3b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Soft Good Type (Key: f77cbc1d-83b0-4fb5-b612-3de335f03b3b)';
END

-- Specimen Contributing Factors (specimen-contributing-factors)
-- Prevalue Source Key: 7abc3231-4bd2-440b-8564-07e947fda423
-- lookupItemFolder Content Key: 1582f513-50f2-4967-a78a-518297f19b4c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3fb5d2bc-a992-4426-a5d0-b359f04afbdd')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3fb5d2bc-a992-4426-a5d0-b359f04afbdd','Specimen Contributing Factors','{
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
    "key": "3fb5d2bc-a992-4426-a5d0-b359f04afbdd",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Contributing Factors (Key: 3fb5d2bc-a992-4426-a5d0-b359f04afbdd)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Contributing Factors (Key: 3fb5d2bc-a992-4426-a5d0-b359f04afbdd)';
END

-- Specimen Loss Location (specimen-loss-location)
-- Prevalue Source Key: a71fbaad-9522-47d7-88fb-33581a1eedb3
-- lookupItemFolder Content Key: 380eab02-1b26-480c-932f-c01704e43697
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '47a2e07e-9975-4209-9e06-c38916154bcf')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('47a2e07e-9975-4209-9e06-c38916154bcf','Specimen Loss Location','{
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
    "key": "47a2e07e-9975-4209-9e06-c38916154bcf",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Location (Key: 47a2e07e-9975-4209-9e06-c38916154bcf)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Location (Key: 47a2e07e-9975-4209-9e06-c38916154bcf)';
END

-- Specimen Loss Reason (specimen-loss-reason)
-- Prevalue Source Key: a4c12cf8-92f7-454a-a4c4-7696246393c6
-- lookupItemFolder Content Key: 17594f52-f230-427d-a9ac-d7b42f6dea49
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'b545611f-1dc9-43c9-951b-830587ac9c9d')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('b545611f-1dc9-43c9-951b-830587ac9c9d','Specimen Loss Reason','{
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
    "key": "b545611f-1dc9-43c9-951b-830587ac9c9d",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Reason (Key: b545611f-1dc9-43c9-951b-830587ac9c9d)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Reason (Key: b545611f-1dc9-43c9-951b-830587ac9c9d)';
END

-- Stage When First Identified (stage-when-first-identified)
-- Prevalue Source Key: f9fdff66-b182-4f9c-84dc-35643bbad216
-- lookupItemFolder Content Key: 2325b7a3-e1e1-42ad-964b-468241afa739
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2c46ecab-d25e-451d-975a-72d4567b3b07')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2c46ecab-d25e-451d-975a-72d4567b3b07','Stage When First Identified','{
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
    "key": "2c46ecab-d25e-451d-975a-72d4567b3b07",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Stage When First Identified (Key: 2c46ecab-d25e-451d-975a-72d4567b3b07)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Stage When First Identified (Key: 2c46ecab-d25e-451d-975a-72d4567b3b07)';
END

-- Toileting Fall Location (toileting-fall-location)
-- Prevalue Source Key: dbc58934-6b77-4a3a-96e9-6e532b1ef6f8
-- lookupItemFolder Content Key: 47062b76-1f20-4575-94e0-b3869c4ac01c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e2fc9afe-81a3-4036-a166-8417ebdfde7e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e2fc9afe-81a3-4036-a166-8417ebdfde7e','Toileting Fall Location','{
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
    "key": "e2fc9afe-81a3-4036-a166-8417ebdfde7e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Toileting Fall Location (Key: e2fc9afe-81a3-4036-a166-8417ebdfde7e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Toileting Fall Location (Key: e2fc9afe-81a3-4036-a166-8417ebdfde7e)';
END

-- Training Education Subcategory (training-education-subcategory)
-- Prevalue Source Key: a2424fee-e264-43e0-982b-fa2e7c03af72
-- lookupItemFolder Content Key: abeacbc2-1691-417b-b637-522a89a28458
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'b4521467-c1c8-49f0-8cfe-d81548fac048')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('b4521467-c1c8-49f0-8cfe-d81548fac048','Training Education Subcategory','{
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
    "key": "b4521467-c1c8-49f0-8cfe-d81548fac048",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Training Education Subcategory (Key: b4521467-c1c8-49f0-8cfe-d81548fac048)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Training Education Subcategory (Key: b4521467-c1c8-49f0-8cfe-d81548fac048)';
END

-- Type Of Harm (type-of-harm)
-- Prevalue Source Key: 61ae4c35-5ad7-4a1f-817f-d0a6099ba49c
-- lookupItemFolder Content Key: 30369262-38b7-4549-9917-f4a2f3e1b29d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4874977a-3402-42e7-a514-8df8c4edb021')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4874977a-3402-42e7-a514-8df8c4edb021','Type Of Harm','{
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
    "key": "4874977a-3402-42e7-a514-8df8c4edb021",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Type Of Harm (Key: 4874977a-3402-42e7-a514-8df8c4edb021)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Type Of Harm (Key: 4874977a-3402-42e7-a514-8df8c4edb021)';
END

-- Underlying Conditions (underlying-conditions)
-- Prevalue Source Key: 7f4c7fad-650c-4968-b6b8-725456225644
-- lookupItemFolder Content Key: 670d09fc-d986-48de-8298-a68f6fdba8af
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'bb85c3af-920c-4127-8fb1-68f9b83b016a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('bb85c3af-920c-4127-8fb1-68f9b83b016a','Underlying Conditions','{
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
    "key": "bb85c3af-920c-4127-8fb1-68f9b83b016a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Underlying Conditions (Key: bb85c3af-920c-4127-8fb1-68f9b83b016a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Underlying Conditions (Key: bb85c3af-920c-4127-8fb1-68f9b83b016a)';
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
