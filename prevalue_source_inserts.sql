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
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '2787d9f4-b23e-49e8-bab6-cb89e28298ef')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('2787d9f4-b23e-49e8-bab6-cb89e28298ef','Body Site','{
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
    "key": "2787d9f4-b23e-49e8-bab6-cb89e28298ef",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Body Site (Key: 2787d9f4-b23e-49e8-bab6-cb89e28298ef)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Body Site (Key: 2787d9f4-b23e-49e8-bab6-cb89e28298ef)';
END

-- Cap Methodology (cap-methodology)
-- Prevalue Source Key: b1f9ce69-5a1f-4ff8-b553-b62472f8bf58
-- lookupItemFolder Content Key: c072b5b3-3989-45fa-b5c7-fcd84a7f2978
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'dacffbc0-e9d3-4f1b-bf30-114bb55b7d54')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('dacffbc0-e9d3-4f1b-bf30-114bb55b7d54','Cap Methodology','{
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
    "key": "dacffbc0-e9d3-4f1b-bf30-114bb55b7d54",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Cap Methodology (Key: dacffbc0-e9d3-4f1b-bf30-114bb55b7d54)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Cap Methodology (Key: dacffbc0-e9d3-4f1b-bf30-114bb55b7d54)';
END

-- Communication Breakdown Point (communication-breakdown-point)
-- Prevalue Source Key: f2e4b0a9-294e-44f7-b731-b0dc898fd7c0
-- lookupItemFolder Content Key: 335d23fe-ffc3-4014-9f06-16f87ecc6aae
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'd7b305b6-0c62-4398-ae99-ea9e69d86bf2')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('d7b305b6-0c62-4398-ae99-ea9e69d86bf2','Communication Breakdown Point','{
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
    "key": "d7b305b6-0c62-4398-ae99-ea9e69d86bf2",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Breakdown Point (Key: d7b305b6-0c62-4398-ae99-ea9e69d86bf2)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Breakdown Point (Key: d7b305b6-0c62-4398-ae99-ea9e69d86bf2)';
END

-- Communication Failure Timing (communication-failure-timing)
-- Prevalue Source Key: ab2f4085-0f43-419f-938f-9c8071ff2c6d
-- lookupItemFolder Content Key: 73a96b5c-226e-4db8-8cb0-7e7730cf39b1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a3addba7-05f7-4240-a697-31104d0046d4')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a3addba7-05f7-4240-a697-31104d0046d4','Communication Failure Timing','{
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
    "key": "a3addba7-05f7-4240-a697-31104d0046d4",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Failure Timing (Key: a3addba7-05f7-4240-a697-31104d0046d4)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Failure Timing (Key: a3addba7-05f7-4240-a697-31104d0046d4)';
END

-- Communication Information Subcategory (communication-information-subcategory)
-- Prevalue Source Key: 86cbdeb4-0e82-4192-ba9d-6a1b36b20ad2
-- lookupItemFolder Content Key: 4c629505-6240-4f6e-a9c5-f24538cb4cdf
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '530c7b7e-0e86-490f-8089-6d76d820a92e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('530c7b7e-0e86-490f-8089-6d76d820a92e','Communication Information Subcategory','{
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
    "key": "530c7b7e-0e86-490f-8089-6d76d820a92e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Information Subcategory (Key: 530c7b7e-0e86-490f-8089-6d76d820a92e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Information Subcategory (Key: 530c7b7e-0e86-490f-8089-6d76d820a92e)';
END

-- Corrective Action Intervention (corrective-action-intervention)
-- Prevalue Source Key: 9dbd25e3-d624-4c17-a376-2467f56de5fb
-- lookupItemFolder Content Key: 284098bb-a6cb-4a6e-bdf0-56cb8a17e723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f379d548-1037-4077-b638-df4077e043b5')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f379d548-1037-4077-b638-df4077e043b5','Corrective Action Intervention','{
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
    "key": "f379d548-1037-4077-b638-df4077e043b5",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Corrective Action Intervention (Key: f379d548-1037-4077-b638-df4077e043b5)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Corrective Action Intervention (Key: f379d548-1037-4077-b638-df4077e043b5)';
END

-- Device Category (device-category)
-- Prevalue Source Key: 87772cef-93ce-462a-9a0c-f4f56f62907b
-- lookupItemFolder Content Key: cd8d7f50-2860-4bf4-a49d-11d435bf6001
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '80138485-acbc-4deb-8eb2-241efe0cb2d2')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('80138485-acbc-4deb-8eb2-241efe0cb2d2','Device Category','{
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
    "key": "80138485-acbc-4deb-8eb2-241efe0cb2d2",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Device Category (Key: 80138485-acbc-4deb-8eb2-241efe0cb2d2)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Device Category (Key: 80138485-acbc-4deb-8eb2-241efe0cb2d2)';
END

-- Electronic Communication Subcategory (electronic-communication-subcategory)
-- Prevalue Source Key: 25b745f5-712d-4cad-b340-d805d66ea42a
-- lookupItemFolder Content Key: 6ae227a2-4990-4b1e-814e-82705dbe87a1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f03038fa-4746-4a6b-8a72-2710d196b457')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f03038fa-4746-4a6b-8a72-2710d196b457','Electronic Communication Subcategory','{
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
    "key": "f03038fa-4746-4a6b-8a72-2710d196b457",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Electronic Communication Subcategory (Key: f03038fa-4746-4a6b-8a72-2710d196b457)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Electronic Communication Subcategory (Key: f03038fa-4746-4a6b-8a72-2710d196b457)';
END

-- Error Type (error-type)
-- Prevalue Source Key: 07159791-5e49-496d-9b61-efe7c1fa496e
-- lookupItemFolder Content Key: 3f21c1a2-40be-438d-9f77-dfa3fe10afd8
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '01220bdc-2508-43ba-8f1c-7b025af1031a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('01220bdc-2508-43ba-8f1c-7b025af1031a','Error Type','{
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
    "key": "01220bdc-2508-43ba-8f1c-7b025af1031a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Error Type (Key: 01220bdc-2508-43ba-8f1c-7b025af1031a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Error Type (Key: 01220bdc-2508-43ba-8f1c-7b025af1031a)';
END

-- Event Location (event-location)
-- Prevalue Source Key: 5d641e0d-f5f7-4805-884b-8fedada26b1d
-- lookupItemFolder Content Key: e9b50e5e-c8ec-450f-8d57-191a4e945404
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'fa4cf859-420f-4dac-a44a-0957ca70f5bf')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('fa4cf859-420f-4dac-a44a-0957ca70f5bf','Event Location','{
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
    "key": "fa4cf859-420f-4dac-a44a-0957ca70f5bf",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Location (Key: fa4cf859-420f-4dac-a44a-0957ca70f5bf)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Location (Key: fa4cf859-420f-4dac-a44a-0957ca70f5bf)';
END

-- Event Time (event-time)
-- Prevalue Source Key: 58d722ec-1d54-4219-843e-6367bcf6477a
-- lookupItemFolder Content Key: 93034def-dbff-434a-a221-98a5bb090b2d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a83af447-b6e8-488b-b6c6-3b55a58d2623')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a83af447-b6e8-488b-b6c6-3b55a58d2623','Event Time','{
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
    "key": "a83af447-b6e8-488b-b6c6-3b55a58d2623",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Time (Key: a83af447-b6e8-488b-b6c6-3b55a58d2623)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Time (Key: a83af447-b6e8-488b-b6c6-3b55a58d2623)';
END

-- Fall Injury (fall-injury)
-- Prevalue Source Key: c38740d4-fc73-464f-8e3d-2292b9fc643a
-- lookupItemFolder Content Key: d10e2c39-3ee4-433e-bc87-62f46faabd9e
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e2e9a156-9164-403f-8628-4f979eda725e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e2e9a156-9164-403f-8628-4f979eda725e','Fall Injury','{
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
    "key": "e2e9a156-9164-403f-8628-4f979eda725e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Injury (Key: e2e9a156-9164-403f-8628-4f979eda725e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Injury (Key: e2e9a156-9164-403f-8628-4f979eda725e)';
END

-- Fall Location (fall-location)
-- Prevalue Source Key: d9ed7411-590c-44c8-af66-9677625b93b2
-- lookupItemFolder Content Key: 0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '5a4a40e4-73a2-43d9-ac9c-9cbde6c4e229')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('5a4a40e4-73a2-43d9-ac9c-9cbde6c4e229','Fall Location','{
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
    "key": "5a4a40e4-73a2-43d9-ac9c-9cbde6c4e229",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Location (Key: 5a4a40e4-73a2-43d9-ac9c-9cbde6c4e229)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Location (Key: 5a4a40e4-73a2-43d9-ac9c-9cbde6c4e229)';
END

-- Fall Prevention Measures (fall-prevention-measures)
-- Prevalue Source Key: f7f35f6c-9ba5-4f8a-b7e5-40b26e80b33c
-- lookupItemFolder Content Key: 2e6b60f7-196d-4c56-b5bc-ea2945623d8d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '1bf0134d-9288-41ae-bf21-09f48b7c32e4')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('1bf0134d-9288-41ae-bf21-09f48b7c32e4','Fall Prevention Measures','{
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
    "key": "1bf0134d-9288-41ae-bf21-09f48b7c32e4",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Prevention Measures (Key: 1bf0134d-9288-41ae-bf21-09f48b7c32e4)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Prevention Measures (Key: 1bf0134d-9288-41ae-bf21-09f48b7c32e4)';
END

-- Harm Type (harm-type)
-- Prevalue Source Key: bb6b21d4-2a6e-4e56-b8a5-706582171c67
-- lookupItemFolder Content Key: d2ae1785-c0e0-4409-8d89-6a1c9dce999a
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4cfedcf9-1296-4aea-b31b-1fc356281cb3')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4cfedcf9-1296-4aea-b31b-1fc356281cb3','Harm Type','{
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
    "key": "4cfedcf9-1296-4aea-b31b-1fc356281cb3",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Harm Type (Key: 4cfedcf9-1296-4aea-b31b-1fc356281cb3)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Harm Type (Key: 4cfedcf9-1296-4aea-b31b-1fc356281cb3)';
END

-- Human Factors Subcategory (human-factors-subcategory)
-- Prevalue Source Key: c7a2f14c-248a-4f1c-81ae-271662f1ef89
-- lookupItemFolder Content Key: a432bda1-1bfb-4ead-af48-cebe19eb1723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f0761853-c15f-485a-8428-ce98d2688b97')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f0761853-c15f-485a-8428-ce98d2688b97','Human Factors Subcategory','{
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
    "key": "f0761853-c15f-485a-8428-ce98d2688b97",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Human Factors Subcategory (Key: f0761853-c15f-485a-8428-ce98d2688b97)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Human Factors Subcategory (Key: f0761853-c15f-485a-8428-ce98d2688b97)';
END

-- Injury Severity (injury-severity)
-- Prevalue Source Key: 29eb69a0-0a94-4a52-ad67-d3e206d28f24
-- lookupItemFolder Content Key: a3278035-697d-4c6f-9c8f-3c3376583ea7
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'b47c670d-ac3a-4e49-92f8-ca27f2c98dae')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('b47c670d-ac3a-4e49-92f8-ca27f2c98dae','Injury Severity','{
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
    "key": "b47c670d-ac3a-4e49-92f8-ca27f2c98dae",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Injury Severity (Key: b47c670d-ac3a-4e49-92f8-ca27f2c98dae)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Injury Severity (Key: b47c670d-ac3a-4e49-92f8-ca27f2c98dae)';
END

-- Organizational Culture Subcategory (organizational-culture-subcategory)
-- Prevalue Source Key: 0dd291e2-23a6-4873-b38e-653cce03947f
-- lookupItemFolder Content Key: 1bc6a292-2cc7-4a56-95e6-f63931cd7bc1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a418032f-9199-4fb0-8c7d-3c9d8620d38a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a418032f-9199-4fb0-8c7d-3c9d8620d38a','Organizational Culture Subcategory','{
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
    "key": "a418032f-9199-4fb0-8c7d-3c9d8620d38a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Organizational Culture Subcategory (Key: a418032f-9199-4fb0-8c7d-3c9d8620d38a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Organizational Culture Subcategory (Key: a418032f-9199-4fb0-8c7d-3c9d8620d38a)';
END

-- Patient Age (patient-age)
-- Prevalue Source Key: bad61c89-04b2-44e4-9d0d-306d0f26004f
-- lookupItemFolder Content Key: 4773c6df-2b95-4d1e-88d1-d2c3bc3087c0
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3aea078a-9889-4b36-b961-b04f8f7a448b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3aea078a-9889-4b36-b961-b04f8f7a448b','Patient Age','{
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
    "key": "3aea078a-9889-4b36-b961-b04f8f7a448b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Age (Key: 3aea078a-9889-4b36-b961-b04f8f7a448b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Age (Key: 3aea078a-9889-4b36-b961-b04f8f7a448b)';
END

-- Patient Ethnicity (patient-ethnicity)
-- Prevalue Source Key: 1de1f31e-7166-453a-8991-b3fef0f07b4c
-- lookupItemFolder Content Key: 97ae4e98-439b-42ff-84bb-4511257fe657
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e7f228ed-c6d8-443d-89b5-f19dcf32a96e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e7f228ed-c6d8-443d-89b5-f19dcf32a96e','Patient Ethnicity','{
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
    "key": "e7f228ed-c6d8-443d-89b5-f19dcf32a96e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Ethnicity (Key: e7f228ed-c6d8-443d-89b5-f19dcf32a96e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Ethnicity (Key: e7f228ed-c6d8-443d-89b5-f19dcf32a96e)';
END

-- Patient Language (patient-language)
-- Prevalue Source Key: 33f44312-b0b6-42ad-a2a6-aeb2766ac274
-- lookupItemFolder Content Key: 6f6ca7fb-97da-46ea-850b-93e4de7e4fb5
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6d544733-5cf2-434d-a20a-cae66ddb90db')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6d544733-5cf2-434d-a20a-cae66ddb90db','Patient Language','{
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
    "key": "6d544733-5cf2-434d-a20a-cae66ddb90db",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Language (Key: 6d544733-5cf2-434d-a20a-cae66ddb90db)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Language (Key: 6d544733-5cf2-434d-a20a-cae66ddb90db)';
END

-- Patient Race (patient-race)
-- Prevalue Source Key: a5903c46-4125-466a-94e6-54c683117f46
-- lookupItemFolder Content Key: c6d2264e-db65-4231-abe2-40620846c5e4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ce1f3f19-d164-4bd1-b88f-dc8a08bcc205')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ce1f3f19-d164-4bd1-b88f-dc8a08bcc205','Patient Race','{
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
    "key": "ce1f3f19-d164-4bd1-b88f-dc8a08bcc205",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Race (Key: ce1f3f19-d164-4bd1-b88f-dc8a08bcc205)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Race (Key: ce1f3f19-d164-4bd1-b88f-dc8a08bcc205)';
END

-- Patient Type (patient-type)
-- Prevalue Source Key: c024d310-e046-43d2-83b2-174b3f6c5bb1
-- lookupItemFolder Content Key: 1408d515-68ac-4568-8e0c-16115a41765b
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0578879d-5d0a-4b3e-87d2-c0ae36f4c2d2')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0578879d-5d0a-4b3e-87d2-c0ae36f4c2d2','Patient Type','{
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
    "key": "0578879d-5d0a-4b3e-87d2-c0ae36f4c2d2",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Type (Key: 0578879d-5d0a-4b3e-87d2-c0ae36f4c2d2)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Type (Key: 0578879d-5d0a-4b3e-87d2-c0ae36f4c2d2)';
END

-- PC1 (pc1)
-- Prevalue Source Key: f1e2d3c4-b5a6-7890-cdef-123456789abc
-- lookupItemFolder Content Key: a1b2c3d4-e5f6-7890-abcd-ef1234567890
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '5b13180f-f66b-43de-a842-722a217f8b1a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('5b13180f-f66b-43de-a842-722a217f8b1a','PC1','{
    "value": "PC1",
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
    "key": "5b13180f-f66b-43de-a842-722a217f8b1a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: PC1 (Key: 5b13180f-f66b-43de-a842-722a217f8b1a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: PC1 (Key: 5b13180f-f66b-43de-a842-722a217f8b1a)';
END

-- Physical Environment Subcategory (physical-environment-subcategory)
-- Prevalue Source Key: 31613f08-b717-461d-bca4-5cf0d5b5bd58
-- lookupItemFolder Content Key: 98f288e9-c990-4507-8d7a-9c8907c57b5c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e59cd578-bb0f-41e1-a986-274ea70bebd2')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e59cd578-bb0f-41e1-a986-274ea70bebd2','Physical Environment Subcategory','{
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
    "key": "e59cd578-bb0f-41e1-a986-274ea70bebd2",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Physical Environment Subcategory (Key: e59cd578-bb0f-41e1-a986-274ea70bebd2)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Physical Environment Subcategory (Key: e59cd578-bb0f-41e1-a986-274ea70bebd2)';
END

-- Pressure Ulcer Stage (pressure-ulcer-stage)
-- Prevalue Source Key: c7b6aaec-7a03-41c9-91c5-81b570689943
-- lookupItemFolder Content Key: 009b7040-4ba2-4c2f-a6c0-532d714a2fe4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6bd5124a-0308-4867-b650-0a8c1d21c465')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6bd5124a-0308-4867-b650-0a8c1d21c465','Pressure Ulcer Stage','{
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
    "key": "6bd5124a-0308-4867-b650-0a8c1d21c465",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Pressure Ulcer Stage (Key: 6bd5124a-0308-4867-b650-0a8c1d21c465)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Pressure Ulcer Stage (Key: 6bd5124a-0308-4867-b650-0a8c1d21c465)';
END

-- Procedure Category (procedure-category)
-- Prevalue Source Key: 5ce87c2d-d0b1-4124-a030-876a0ca97fb9
-- lookupItemFolder Content Key: a438b819-0c9a-4fd8-a120-007f1b4c86f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '3f2fc7a9-4645-4dec-8980-ef4420e3750c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('3f2fc7a9-4645-4dec-8980-ef4420e3750c','Procedure Category','{
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
    "key": "3f2fc7a9-4645-4dec-8980-ef4420e3750c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Category (Key: 3f2fc7a9-4645-4dec-8980-ef4420e3750c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Category (Key: 3f2fc7a9-4645-4dec-8980-ef4420e3750c)';
END

-- Procedure Type (procedure-type)
-- Prevalue Source Key: ef2a7995-af9b-4b24-8224-0e90b77d0e8a
-- lookupItemFolder Content Key: c85b23f5-9fb4-4c6d-a984-e51eb86782f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '503c288f-17a9-48fa-b68f-deedd2be3669')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('503c288f-17a9-48fa-b68f-deedd2be3669','Procedure Type','{
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
    "key": "503c288f-17a9-48fa-b68f-deedd2be3669",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Type (Key: 503c288f-17a9-48fa-b68f-deedd2be3669)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Type (Key: 503c288f-17a9-48fa-b68f-deedd2be3669)';
END

-- Process Stage (process-stage)
-- Prevalue Source Key: 9c2a994d-b12a-4197-bbd3-a81fa800efea
-- lookupItemFolder Content Key: 58387e35-9969-4514-afc2-9e4bbdd679ab
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ab98bac7-305c-4928-8e5a-11c3455415e8')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ab98bac7-305c-4928-8e5a-11c3455415e8','Process Stage','{
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
    "key": "ab98bac7-305c-4928-8e5a-11c3455415e8",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Process Stage (Key: ab98bac7-305c-4928-8e5a-11c3455415e8)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Process Stage (Key: ab98bac7-305c-4928-8e5a-11c3455415e8)';
END

-- Retained Object Type (retained-object-type)
-- Prevalue Source Key: 908bf913-b1dd-489b-aa70-c8ab51ae62da
-- lookupItemFolder Content Key: e5343daa-7591-4654-b233-f26f2555beba
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6221d14e-7041-41fb-b2f2-8d0160fafccb')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6221d14e-7041-41fb-b2f2-8d0160fafccb','Retained Object Type','{
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
    "key": "6221d14e-7041-41fb-b2f2-8d0160fafccb",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Retained Object Type (Key: 6221d14e-7041-41fb-b2f2-8d0160fafccb)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Retained Object Type (Key: 6221d14e-7041-41fb-b2f2-8d0160fafccb)';
END

-- Root Cause Category (root-cause-category)
-- Prevalue Source Key: ce0b30dd-10c8-4f82-a6b7-ba9a6457df05
-- lookupItemFolder Content Key: 4d5e04e7-9f1e-468b-80db-291378f98188
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e1b384e7-d6fb-45b0-869e-be20224b44d0')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e1b384e7-d6fb-45b0-869e-be20224b44d0','Root Cause Category','{
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
    "key": "e1b384e7-d6fb-45b0-869e-be20224b44d0",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Root Cause Category (Key: e1b384e7-d6fb-45b0-869e-be20224b44d0)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Root Cause Category (Key: e1b384e7-d6fb-45b0-869e-be20224b44d0)';
END

-- Rules Policies Procedures Subcategory (rules-policies-procedures-subcategory)
-- Prevalue Source Key: e9da1a32-0eff-41c9-b301-45796eafbc12
-- lookupItemFolder Content Key: 08a42eb4-04ed-4f11-9b12-8001490c8c72
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '47723109-6c30-4f40-87b8-76bf23a8f6b9')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('47723109-6c30-4f40-87b8-76bf23a8f6b9','Rules Policies Procedures Subcategory','{
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
    "key": "47723109-6c30-4f40-87b8-76bf23a8f6b9",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Rules Policies Procedures Subcategory (Key: 47723109-6c30-4f40-87b8-76bf23a8f6b9)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Rules Policies Procedures Subcategory (Key: 47723109-6c30-4f40-87b8-76bf23a8f6b9)';
END

-- Soft Good Type (soft-good-type)
-- Prevalue Source Key: 200f86f3-6a27-48c0-aa8d-2a7965dd1652
-- lookupItemFolder Content Key: 051034cf-a80e-4e5f-8870-2d0a26e57212
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '187ed88b-9b32-4882-ad60-bdd72afb4e19')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('187ed88b-9b32-4882-ad60-bdd72afb4e19','Soft Good Type','{
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
    "key": "187ed88b-9b32-4882-ad60-bdd72afb4e19",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Soft Good Type (Key: 187ed88b-9b32-4882-ad60-bdd72afb4e19)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Soft Good Type (Key: 187ed88b-9b32-4882-ad60-bdd72afb4e19)';
END

-- Specimen Contributing Factors (specimen-contributing-factors)
-- Prevalue Source Key: 7abc3231-4bd2-440b-8564-07e947fda423
-- lookupItemFolder Content Key: 1582f513-50f2-4967-a78a-518297f19b4c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4eb34b3b-31e1-4538-b0fb-1a5ae0c2cdaa')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4eb34b3b-31e1-4538-b0fb-1a5ae0c2cdaa','Specimen Contributing Factors','{
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
    "key": "4eb34b3b-31e1-4538-b0fb-1a5ae0c2cdaa",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Contributing Factors (Key: 4eb34b3b-31e1-4538-b0fb-1a5ae0c2cdaa)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Contributing Factors (Key: 4eb34b3b-31e1-4538-b0fb-1a5ae0c2cdaa)';
END

-- Specimen Loss Location (specimen-loss-location)
-- Prevalue Source Key: a71fbaad-9522-47d7-88fb-33581a1eedb3
-- lookupItemFolder Content Key: 380eab02-1b26-480c-932f-c01704e43697
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '11b77a69-c631-444a-86cb-e79fc3545455')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('11b77a69-c631-444a-86cb-e79fc3545455','Specimen Loss Location','{
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
    "key": "11b77a69-c631-444a-86cb-e79fc3545455",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Location (Key: 11b77a69-c631-444a-86cb-e79fc3545455)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Location (Key: 11b77a69-c631-444a-86cb-e79fc3545455)';
END

-- Specimen Loss Reason (specimen-loss-reason)
-- Prevalue Source Key: a4c12cf8-92f7-454a-a4c4-7696246393c6
-- lookupItemFolder Content Key: 17594f52-f230-427d-a9ac-d7b42f6dea49
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0ed8e7c9-d6c7-4b0e-bfc0-d90a0bd2a190')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0ed8e7c9-d6c7-4b0e-bfc0-d90a0bd2a190','Specimen Loss Reason','{
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
    "key": "0ed8e7c9-d6c7-4b0e-bfc0-d90a0bd2a190",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Reason (Key: 0ed8e7c9-d6c7-4b0e-bfc0-d90a0bd2a190)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Reason (Key: 0ed8e7c9-d6c7-4b0e-bfc0-d90a0bd2a190)';
END

-- Stage When First Identified (stage-when-first-identified)
-- Prevalue Source Key: f9fdff66-b182-4f9c-84dc-35643bbad216
-- lookupItemFolder Content Key: 2325b7a3-e1e1-42ad-964b-468241afa739
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '18ca1d62-986d-44c3-851a-12ab721b1771')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('18ca1d62-986d-44c3-851a-12ab721b1771','Stage When First Identified','{
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
    "key": "18ca1d62-986d-44c3-851a-12ab721b1771",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Stage When First Identified (Key: 18ca1d62-986d-44c3-851a-12ab721b1771)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Stage When First Identified (Key: 18ca1d62-986d-44c3-851a-12ab721b1771)';
END

-- Toileting Fall Location (toileting-fall-location)
-- Prevalue Source Key: dbc58934-6b77-4a3a-96e9-6e532b1ef6f8
-- lookupItemFolder Content Key: 47062b76-1f20-4575-94e0-b3869c4ac01c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '02d277cc-e078-40be-9ee0-18a38ed3a370')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('02d277cc-e078-40be-9ee0-18a38ed3a370','Toileting Fall Location','{
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
    "key": "02d277cc-e078-40be-9ee0-18a38ed3a370",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Toileting Fall Location (Key: 02d277cc-e078-40be-9ee0-18a38ed3a370)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Toileting Fall Location (Key: 02d277cc-e078-40be-9ee0-18a38ed3a370)';
END

-- Training Education Subcategory (training-education-subcategory)
-- Prevalue Source Key: a2424fee-e264-43e0-982b-fa2e7c03af72
-- lookupItemFolder Content Key: abeacbc2-1691-417b-b637-522a89a28458
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'afe426ff-1f2b-475f-8543-fa8250acaa49')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('afe426ff-1f2b-475f-8543-fa8250acaa49','Training Education Subcategory','{
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
    "key": "afe426ff-1f2b-475f-8543-fa8250acaa49",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Training Education Subcategory (Key: afe426ff-1f2b-475f-8543-fa8250acaa49)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Training Education Subcategory (Key: afe426ff-1f2b-475f-8543-fa8250acaa49)';
END

-- Type Of Harm (type-of-harm)
-- Prevalue Source Key: 61ae4c35-5ad7-4a1f-817f-d0a6099ba49c
-- lookupItemFolder Content Key: 30369262-38b7-4549-9917-f4a2f3e1b29d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '83cdcd79-fcc7-4a40-ba2c-890d2a7a405a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('83cdcd79-fcc7-4a40-ba2c-890d2a7a405a','Type Of Harm','{
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
    "key": "83cdcd79-fcc7-4a40-ba2c-890d2a7a405a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Type Of Harm (Key: 83cdcd79-fcc7-4a40-ba2c-890d2a7a405a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Type Of Harm (Key: 83cdcd79-fcc7-4a40-ba2c-890d2a7a405a)';
END

-- Underlying Conditions (underlying-conditions)
-- Prevalue Source Key: 7f4c7fad-650c-4968-b6b8-725456225644
-- lookupItemFolder Content Key: 670d09fc-d986-48de-8298-a68f6fdba8af
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4d3af6d1-1f7c-42f4-838d-43bd38669d52')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4d3af6d1-1f7c-42f4-838d-43bd38669d52','Underlying Conditions','{
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
    "key": "4d3af6d1-1f7c-42f4-838d-43bd38669d52",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Underlying Conditions (Key: 4d3af6d1-1f7c-42f4-838d-43bd38669d52)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Underlying Conditions (Key: 4d3af6d1-1f7c-42f4-838d-43bd38669d52)';
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
