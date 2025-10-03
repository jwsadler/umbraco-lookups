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
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '171a367e-fa96-4766-bd2c-036b3e48d704')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('171a367e-fa96-4766-bd2c-036b3e48d704','Body Site','{
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
    "key": "171a367e-fa96-4766-bd2c-036b3e48d704",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Body Site (Key: 171a367e-fa96-4766-bd2c-036b3e48d704)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Body Site (Key: 171a367e-fa96-4766-bd2c-036b3e48d704)';
END

-- Cap Methodology (cap-methodology)
-- Prevalue Source Key: b1f9ce69-5a1f-4ff8-b553-b62472f8bf58
-- lookupItemFolder Content Key: c072b5b3-3989-45fa-b5c7-fcd84a7f2978
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '98a94b90-3522-40be-98f0-a3dff178841f')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('98a94b90-3522-40be-98f0-a3dff178841f','Cap Methodology','{
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
    "key": "98a94b90-3522-40be-98f0-a3dff178841f",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Cap Methodology (Key: 98a94b90-3522-40be-98f0-a3dff178841f)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Cap Methodology (Key: 98a94b90-3522-40be-98f0-a3dff178841f)';
END

-- Communication Breakdown Point (communication-breakdown-point)
-- Prevalue Source Key: f2e4b0a9-294e-44f7-b731-b0dc898fd7c0
-- lookupItemFolder Content Key: 335d23fe-ffc3-4014-9f06-16f87ecc6aae
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '24d1ef7e-840c-42ab-b292-ff193fe39938')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('24d1ef7e-840c-42ab-b292-ff193fe39938','Communication Breakdown Point','{
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
    "key": "24d1ef7e-840c-42ab-b292-ff193fe39938",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Breakdown Point (Key: 24d1ef7e-840c-42ab-b292-ff193fe39938)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Breakdown Point (Key: 24d1ef7e-840c-42ab-b292-ff193fe39938)';
END

-- Communication Failure Timing (communication-failure-timing)
-- Prevalue Source Key: ab2f4085-0f43-419f-938f-9c8071ff2c6d
-- lookupItemFolder Content Key: 73a96b5c-226e-4db8-8cb0-7e7730cf39b1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'f4f851b5-7648-41e0-911d-54950d1f5d84')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('f4f851b5-7648-41e0-911d-54950d1f5d84','Communication Failure Timing','{
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
    "key": "f4f851b5-7648-41e0-911d-54950d1f5d84",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Failure Timing (Key: f4f851b5-7648-41e0-911d-54950d1f5d84)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Failure Timing (Key: f4f851b5-7648-41e0-911d-54950d1f5d84)';
END

-- Communication Information Subcategory (communication-information-subcategory)
-- Prevalue Source Key: 86cbdeb4-0e82-4192-ba9d-6a1b36b20ad2
-- lookupItemFolder Content Key: 4c629505-6240-4f6e-a9c5-f24538cb4cdf
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a9e415f4-c399-4cfc-b04c-63dd930cf187')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a9e415f4-c399-4cfc-b04c-63dd930cf187','Communication Information Subcategory','{
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
    "key": "a9e415f4-c399-4cfc-b04c-63dd930cf187",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Communication Information Subcategory (Key: a9e415f4-c399-4cfc-b04c-63dd930cf187)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Communication Information Subcategory (Key: a9e415f4-c399-4cfc-b04c-63dd930cf187)';
END

-- Corrective Action Intervention (corrective-action-intervention)
-- Prevalue Source Key: 9dbd25e3-d624-4c17-a376-2467f56de5fb
-- lookupItemFolder Content Key: 284098bb-a6cb-4a6e-bdf0-56cb8a17e723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '33070656-58ea-452c-bbf6-b79179b247c1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('33070656-58ea-452c-bbf6-b79179b247c1','Corrective Action Intervention','{
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
    "key": "33070656-58ea-452c-bbf6-b79179b247c1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Corrective Action Intervention (Key: 33070656-58ea-452c-bbf6-b79179b247c1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Corrective Action Intervention (Key: 33070656-58ea-452c-bbf6-b79179b247c1)';
END

-- Device Category (device-category)
-- Prevalue Source Key: 87772cef-93ce-462a-9a0c-f4f56f62907b
-- lookupItemFolder Content Key: cd8d7f50-2860-4bf4-a49d-11d435bf6001
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6a340804-58c8-4d61-8416-f5d3d79b11e8')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6a340804-58c8-4d61-8416-f5d3d79b11e8','Device Category','{
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
    "key": "6a340804-58c8-4d61-8416-f5d3d79b11e8",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Device Category (Key: 6a340804-58c8-4d61-8416-f5d3d79b11e8)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Device Category (Key: 6a340804-58c8-4d61-8416-f5d3d79b11e8)';
END

-- Electronic Communication Subcategory (electronic-communication-subcategory)
-- Prevalue Source Key: 25b745f5-712d-4cad-b340-d805d66ea42a
-- lookupItemFolder Content Key: 6ae227a2-4990-4b1e-814e-82705dbe87a1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '495fc440-be6a-4237-a10b-c04216ed4cb6')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('495fc440-be6a-4237-a10b-c04216ed4cb6','Electronic Communication Subcategory','{
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
    "key": "495fc440-be6a-4237-a10b-c04216ed4cb6",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Electronic Communication Subcategory (Key: 495fc440-be6a-4237-a10b-c04216ed4cb6)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Electronic Communication Subcategory (Key: 495fc440-be6a-4237-a10b-c04216ed4cb6)';
END

-- Error Type (error-type)
-- Prevalue Source Key: 07159791-5e49-496d-9b61-efe7c1fa496e
-- lookupItemFolder Content Key: 3f21c1a2-40be-438d-9f77-dfa3fe10afd8
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '78cdbf38-5f5a-4567-90e6-71a546eae495')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('78cdbf38-5f5a-4567-90e6-71a546eae495','Error Type','{
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
    "key": "78cdbf38-5f5a-4567-90e6-71a546eae495",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Error Type (Key: 78cdbf38-5f5a-4567-90e6-71a546eae495)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Error Type (Key: 78cdbf38-5f5a-4567-90e6-71a546eae495)';
END

-- Event Location (event-location)
-- Prevalue Source Key: 5d641e0d-f5f7-4805-884b-8fedada26b1d
-- lookupItemFolder Content Key: e9b50e5e-c8ec-450f-8d57-191a4e945404
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6a467f1e-279c-4700-a436-18e82360e7fb')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6a467f1e-279c-4700-a436-18e82360e7fb','Event Location','{
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
    "key": "6a467f1e-279c-4700-a436-18e82360e7fb",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Location (Key: 6a467f1e-279c-4700-a436-18e82360e7fb)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Location (Key: 6a467f1e-279c-4700-a436-18e82360e7fb)';
END

-- Event Time (event-time)
-- Prevalue Source Key: 58d722ec-1d54-4219-843e-6367bcf6477a
-- lookupItemFolder Content Key: 93034def-dbff-434a-a221-98a5bb090b2d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ec99e40a-b43d-48cb-848c-7969f509a61f')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ec99e40a-b43d-48cb-848c-7969f509a61f','Event Time','{
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
    "key": "ec99e40a-b43d-48cb-848c-7969f509a61f",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Event Time (Key: ec99e40a-b43d-48cb-848c-7969f509a61f)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Event Time (Key: ec99e40a-b43d-48cb-848c-7969f509a61f)';
END

-- Fall Injury (fall-injury)
-- Prevalue Source Key: c38740d4-fc73-464f-8e3d-2292b9fc643a
-- lookupItemFolder Content Key: d10e2c39-3ee4-433e-bc87-62f46faabd9e
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0306ae0a-486e-4863-a29d-0e2f9157350a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0306ae0a-486e-4863-a29d-0e2f9157350a','Fall Injury','{
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
    "key": "0306ae0a-486e-4863-a29d-0e2f9157350a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Injury (Key: 0306ae0a-486e-4863-a29d-0e2f9157350a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Injury (Key: 0306ae0a-486e-4863-a29d-0e2f9157350a)';
END

-- Fall Location (fall-location)
-- Prevalue Source Key: d9ed7411-590c-44c8-af66-9677625b93b2
-- lookupItemFolder Content Key: 0d5ab587-0e7b-4020-9e7a-1c3ea69a2a3c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4aff32cf-f61e-4ec3-ad9e-b1d917889fa1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4aff32cf-f61e-4ec3-ad9e-b1d917889fa1','Fall Location','{
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
    "key": "4aff32cf-f61e-4ec3-ad9e-b1d917889fa1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Location (Key: 4aff32cf-f61e-4ec3-ad9e-b1d917889fa1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Location (Key: 4aff32cf-f61e-4ec3-ad9e-b1d917889fa1)';
END

-- Fall Prevention Measures (fall-prevention-measures)
-- Prevalue Source Key: f7f35f6c-9ba5-4f8a-b7e5-40b26e80b33c
-- lookupItemFolder Content Key: 2e6b60f7-196d-4c56-b5bc-ea2945623d8d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'b6979d1c-41cb-4300-b671-adbb2a5951a6')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('b6979d1c-41cb-4300-b671-adbb2a5951a6','Fall Prevention Measures','{
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
    "key": "b6979d1c-41cb-4300-b671-adbb2a5951a6",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Fall Prevention Measures (Key: b6979d1c-41cb-4300-b671-adbb2a5951a6)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Fall Prevention Measures (Key: b6979d1c-41cb-4300-b671-adbb2a5951a6)';
END

-- Harm Type (harm-type)
-- Prevalue Source Key: bb6b21d4-2a6e-4e56-b8a5-706582171c67
-- lookupItemFolder Content Key: d2ae1785-c0e0-4409-8d89-6a1c9dce999a
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'cad61508-76fd-4b57-89a3-794fac0a36af')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('cad61508-76fd-4b57-89a3-794fac0a36af','Harm Type','{
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
    "key": "cad61508-76fd-4b57-89a3-794fac0a36af",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Harm Type (Key: cad61508-76fd-4b57-89a3-794fac0a36af)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Harm Type (Key: cad61508-76fd-4b57-89a3-794fac0a36af)';
END

-- Human Factors Subcategory (human-factors-subcategory)
-- Prevalue Source Key: c7a2f14c-248a-4f1c-81ae-271662f1ef89
-- lookupItemFolder Content Key: a432bda1-1bfb-4ead-af48-cebe19eb1723
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '457962d3-b4f5-4cc0-99fe-138b5c5491d3')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('457962d3-b4f5-4cc0-99fe-138b5c5491d3','Human Factors Subcategory','{
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
    "key": "457962d3-b4f5-4cc0-99fe-138b5c5491d3",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Human Factors Subcategory (Key: 457962d3-b4f5-4cc0-99fe-138b5c5491d3)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Human Factors Subcategory (Key: 457962d3-b4f5-4cc0-99fe-138b5c5491d3)';
END

-- Injury Severity (injury-severity)
-- Prevalue Source Key: 29eb69a0-0a94-4a52-ad67-d3e206d28f24
-- lookupItemFolder Content Key: a3278035-697d-4c6f-9c8f-3c3376583ea7
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4fa0599c-ff1d-4513-9e2f-a29cd929c69a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4fa0599c-ff1d-4513-9e2f-a29cd929c69a','Injury Severity','{
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
    "key": "4fa0599c-ff1d-4513-9e2f-a29cd929c69a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Injury Severity (Key: 4fa0599c-ff1d-4513-9e2f-a29cd929c69a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Injury Severity (Key: 4fa0599c-ff1d-4513-9e2f-a29cd929c69a)';
END

-- Organizational Culture Subcategory (organizational-culture-subcategory)
-- Prevalue Source Key: 0dd291e2-23a6-4873-b38e-653cce03947f
-- lookupItemFolder Content Key: 1bc6a292-2cc7-4a56-95e6-f63931cd7bc1
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'c6d5167a-349c-4c5b-9d14-e69a9362d07a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('c6d5167a-349c-4c5b-9d14-e69a9362d07a','Organizational Culture Subcategory','{
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
    "key": "c6d5167a-349c-4c5b-9d14-e69a9362d07a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Organizational Culture Subcategory (Key: c6d5167a-349c-4c5b-9d14-e69a9362d07a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Organizational Culture Subcategory (Key: c6d5167a-349c-4c5b-9d14-e69a9362d07a)';
END

-- Patient Age (patient-age)
-- Prevalue Source Key: bad61c89-04b2-44e4-9d0d-306d0f26004f
-- lookupItemFolder Content Key: 4773c6df-2b95-4d1e-88d1-d2c3bc3087c0
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '374588db-d134-4cba-866b-c65e11ba2b65')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('374588db-d134-4cba-866b-c65e11ba2b65','Patient Age','{
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
    "key": "374588db-d134-4cba-866b-c65e11ba2b65",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Age (Key: 374588db-d134-4cba-866b-c65e11ba2b65)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Age (Key: 374588db-d134-4cba-866b-c65e11ba2b65)';
END

-- Patient Ethnicity (patient-ethnicity)
-- Prevalue Source Key: 1de1f31e-7166-453a-8991-b3fef0f07b4c
-- lookupItemFolder Content Key: 97ae4e98-439b-42ff-84bb-4511257fe657
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4f6000ee-396e-4530-bce0-46da83736f6b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4f6000ee-396e-4530-bce0-46da83736f6b','Patient Ethnicity','{
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
    "key": "4f6000ee-396e-4530-bce0-46da83736f6b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Ethnicity (Key: 4f6000ee-396e-4530-bce0-46da83736f6b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Ethnicity (Key: 4f6000ee-396e-4530-bce0-46da83736f6b)';
END

-- Patient Language (patient-language)
-- Prevalue Source Key: 33f44312-b0b6-42ad-a2a6-aeb2766ac274
-- lookupItemFolder Content Key: 6f6ca7fb-97da-46ea-850b-93e4de7e4fb5
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'c937ed53-d7e2-4f55-a1de-c5a6d93980ba')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('c937ed53-d7e2-4f55-a1de-c5a6d93980ba','Patient Language','{
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
    "key": "c937ed53-d7e2-4f55-a1de-c5a6d93980ba",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Language (Key: c937ed53-d7e2-4f55-a1de-c5a6d93980ba)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Language (Key: c937ed53-d7e2-4f55-a1de-c5a6d93980ba)';
END

-- Patient Race (patient-race)
-- Prevalue Source Key: a5903c46-4125-466a-94e6-54c683117f46
-- lookupItemFolder Content Key: c6d2264e-db65-4231-abe2-40620846c5e4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '0e72d818-567d-48db-89b6-fcfa611ed93c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('0e72d818-567d-48db-89b6-fcfa611ed93c','Patient Race','{
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
    "key": "0e72d818-567d-48db-89b6-fcfa611ed93c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Race (Key: 0e72d818-567d-48db-89b6-fcfa611ed93c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Race (Key: 0e72d818-567d-48db-89b6-fcfa611ed93c)';
END

-- Patient Type (patient-type)
-- Prevalue Source Key: c024d310-e046-43d2-83b2-174b3f6c5bb1
-- lookupItemFolder Content Key: 1408d515-68ac-4568-8e0c-16115a41765b
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6ba719b4-2cf1-4423-b3ad-7d714bcab2ec')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6ba719b4-2cf1-4423-b3ad-7d714bcab2ec','Patient Type','{
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
    "key": "6ba719b4-2cf1-4423-b3ad-7d714bcab2ec",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Patient Type (Key: 6ba719b4-2cf1-4423-b3ad-7d714bcab2ec)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Patient Type (Key: 6ba719b4-2cf1-4423-b3ad-7d714bcab2ec)';
END

-- Physical Environment Subcategory (physical-environment-subcategory)
-- Prevalue Source Key: 31613f08-b717-461d-bca4-5cf0d5b5bd58
-- lookupItemFolder Content Key: 98f288e9-c990-4507-8d7a-9c8907c57b5c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '8b8c36c8-b0b0-4c8f-aa97-eae5c1dae100')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('8b8c36c8-b0b0-4c8f-aa97-eae5c1dae100','Physical Environment Subcategory','{
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
    "key": "8b8c36c8-b0b0-4c8f-aa97-eae5c1dae100",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Physical Environment Subcategory (Key: 8b8c36c8-b0b0-4c8f-aa97-eae5c1dae100)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Physical Environment Subcategory (Key: 8b8c36c8-b0b0-4c8f-aa97-eae5c1dae100)';
END

-- Pressure Ulcer Stage (pressure-ulcer-stage)
-- Prevalue Source Key: c7b6aaec-7a03-41c9-91c5-81b570689943
-- lookupItemFolder Content Key: 009b7040-4ba2-4c2f-a6c0-532d714a2fe4
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'a9399b4c-ca00-49cd-834b-1cbbc8b0cfea')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('a9399b4c-ca00-49cd-834b-1cbbc8b0cfea','Pressure Ulcer Stage','{
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
    "key": "a9399b4c-ca00-49cd-834b-1cbbc8b0cfea",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Pressure Ulcer Stage (Key: a9399b4c-ca00-49cd-834b-1cbbc8b0cfea)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Pressure Ulcer Stage (Key: a9399b4c-ca00-49cd-834b-1cbbc8b0cfea)';
END

-- Procedure Category (procedure-category)
-- Prevalue Source Key: 5ce87c2d-d0b1-4124-a030-876a0ca97fb9
-- lookupItemFolder Content Key: a438b819-0c9a-4fd8-a120-007f1b4c86f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '06c0679c-2c93-404e-8e79-dca9cd910cdf')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('06c0679c-2c93-404e-8e79-dca9cd910cdf','Procedure Category','{
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
    "key": "06c0679c-2c93-404e-8e79-dca9cd910cdf",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Category (Key: 06c0679c-2c93-404e-8e79-dca9cd910cdf)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Category (Key: 06c0679c-2c93-404e-8e79-dca9cd910cdf)';
END

-- Procedure Type (procedure-type)
-- Prevalue Source Key: ef2a7995-af9b-4b24-8224-0e90b77d0e8a
-- lookupItemFolder Content Key: c85b23f5-9fb4-4c6d-a984-e51eb86782f9
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '83c391d9-3209-427e-80ae-d3a8b20df214')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('83c391d9-3209-427e-80ae-d3a8b20df214','Procedure Type','{
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
    "key": "83c391d9-3209-427e-80ae-d3a8b20df214",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Procedure Type (Key: 83c391d9-3209-427e-80ae-d3a8b20df214)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Procedure Type (Key: 83c391d9-3209-427e-80ae-d3a8b20df214)';
END

-- Process Stage (process-stage)
-- Prevalue Source Key: 9c2a994d-b12a-4197-bbd3-a81fa800efea
-- lookupItemFolder Content Key: 58387e35-9969-4514-afc2-9e4bbdd679ab
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e7c1234f-b932-487e-b320-67dc74602569')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e7c1234f-b932-487e-b320-67dc74602569','Process Stage','{
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
    "key": "e7c1234f-b932-487e-b320-67dc74602569",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Process Stage (Key: e7c1234f-b932-487e-b320-67dc74602569)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Process Stage (Key: e7c1234f-b932-487e-b320-67dc74602569)';
END

-- Retained Object Type (retained-object-type)
-- Prevalue Source Key: 908bf913-b1dd-489b-aa70-c8ab51ae62da
-- lookupItemFolder Content Key: e5343daa-7591-4654-b233-f26f2555beba
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'ecc8076d-d187-4d08-addf-e96fe1e0b90b')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('ecc8076d-d187-4d08-addf-e96fe1e0b90b','Retained Object Type','{
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
    "key": "ecc8076d-d187-4d08-addf-e96fe1e0b90b",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Retained Object Type (Key: ecc8076d-d187-4d08-addf-e96fe1e0b90b)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Retained Object Type (Key: ecc8076d-d187-4d08-addf-e96fe1e0b90b)';
END

-- Root Cause Category (root-cause-category)
-- Prevalue Source Key: ce0b30dd-10c8-4f82-a6b7-ba9a6457df05
-- lookupItemFolder Content Key: 4d5e04e7-9f1e-468b-80db-291378f98188
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '6f225fa5-a236-43e7-88d9-785223d5d57a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('6f225fa5-a236-43e7-88d9-785223d5d57a','Root Cause Category','{
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
    "key": "6f225fa5-a236-43e7-88d9-785223d5d57a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Root Cause Category (Key: 6f225fa5-a236-43e7-88d9-785223d5d57a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Root Cause Category (Key: 6f225fa5-a236-43e7-88d9-785223d5d57a)';
END

-- Rules Policies Procedures Subcategory (rules-policies-procedures-subcategory)
-- Prevalue Source Key: e9da1a32-0eff-41c9-b301-45796eafbc12
-- lookupItemFolder Content Key: 08a42eb4-04ed-4f11-9b12-8001490c8c72
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'be3aad45-c9d3-42de-9194-05341477b8fc')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('be3aad45-c9d3-42de-9194-05341477b8fc','Rules Policies Procedures Subcategory','{
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
    "key": "be3aad45-c9d3-42de-9194-05341477b8fc",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Rules Policies Procedures Subcategory (Key: be3aad45-c9d3-42de-9194-05341477b8fc)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Rules Policies Procedures Subcategory (Key: be3aad45-c9d3-42de-9194-05341477b8fc)';
END

-- Soft Good Type (soft-good-type)
-- Prevalue Source Key: 200f86f3-6a27-48c0-aa8d-2a7965dd1652
-- lookupItemFolder Content Key: 051034cf-a80e-4e5f-8870-2d0a26e57212
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '5f1f9780-090e-4eb2-8921-60f3e16a37f3')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('5f1f9780-090e-4eb2-8921-60f3e16a37f3','Soft Good Type','{
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
    "key": "5f1f9780-090e-4eb2-8921-60f3e16a37f3",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Soft Good Type (Key: 5f1f9780-090e-4eb2-8921-60f3e16a37f3)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Soft Good Type (Key: 5f1f9780-090e-4eb2-8921-60f3e16a37f3)';
END

-- Specimen Contributing Factors (specimen-contributing-factors)
-- Prevalue Source Key: 7abc3231-4bd2-440b-8564-07e947fda423
-- lookupItemFolder Content Key: 1582f513-50f2-4967-a78a-518297f19b4c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'b611212f-803b-468f-902c-37c49f26171c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('b611212f-803b-468f-902c-37c49f26171c','Specimen Contributing Factors','{
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
    "key": "b611212f-803b-468f-902c-37c49f26171c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Contributing Factors (Key: b611212f-803b-468f-902c-37c49f26171c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Contributing Factors (Key: b611212f-803b-468f-902c-37c49f26171c)';
END

-- Specimen Loss Location (specimen-loss-location)
-- Prevalue Source Key: a71fbaad-9522-47d7-88fb-33581a1eedb3
-- lookupItemFolder Content Key: 380eab02-1b26-480c-932f-c01704e43697
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'c106bdd0-f2ab-4a7a-a063-86a4f554c10e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('c106bdd0-f2ab-4a7a-a063-86a4f554c10e','Specimen Loss Location','{
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
    "key": "c106bdd0-f2ab-4a7a-a063-86a4f554c10e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Location (Key: c106bdd0-f2ab-4a7a-a063-86a4f554c10e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Location (Key: c106bdd0-f2ab-4a7a-a063-86a4f554c10e)';
END

-- Specimen Loss Reason (specimen-loss-reason)
-- Prevalue Source Key: a4c12cf8-92f7-454a-a4c4-7696246393c6
-- lookupItemFolder Content Key: 17594f52-f230-427d-a9ac-d7b42f6dea49
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e2a8078c-3650-492f-8a8a-ae6ff854a33c')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e2a8078c-3650-492f-8a8a-ae6ff854a33c','Specimen Loss Reason','{
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
    "key": "e2a8078c-3650-492f-8a8a-ae6ff854a33c",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Specimen Loss Reason (Key: e2a8078c-3650-492f-8a8a-ae6ff854a33c)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Specimen Loss Reason (Key: e2a8078c-3650-492f-8a8a-ae6ff854a33c)';
END

-- Stage When First Identified (stage-when-first-identified)
-- Prevalue Source Key: f9fdff66-b182-4f9c-84dc-35643bbad216
-- lookupItemFolder Content Key: 2325b7a3-e1e1-42ad-964b-468241afa739
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '78b8b713-3af9-4a0f-81b7-aea99ce5c319')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('78b8b713-3af9-4a0f-81b7-aea99ce5c319','Stage When First Identified','{
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
    "key": "78b8b713-3af9-4a0f-81b7-aea99ce5c319",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Stage When First Identified (Key: 78b8b713-3af9-4a0f-81b7-aea99ce5c319)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Stage When First Identified (Key: 78b8b713-3af9-4a0f-81b7-aea99ce5c319)';
END

-- Toileting Fall Location (toileting-fall-location)
-- Prevalue Source Key: dbc58934-6b77-4a3a-96e9-6e532b1ef6f8
-- lookupItemFolder Content Key: 47062b76-1f20-4575-94e0-b3869c4ac01c
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '4c3e2718-e534-401f-a12e-2d8d4b735c2e')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('4c3e2718-e534-401f-a12e-2d8d4b735c2e','Toileting Fall Location','{
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
    "key": "4c3e2718-e534-401f-a12e-2d8d4b735c2e",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Toileting Fall Location (Key: 4c3e2718-e534-401f-a12e-2d8d4b735c2e)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Toileting Fall Location (Key: 4c3e2718-e534-401f-a12e-2d8d4b735c2e)';
END

-- Training Education Subcategory (training-education-subcategory)
-- Prevalue Source Key: a2424fee-e264-43e0-982b-fa2e7c03af72
-- lookupItemFolder Content Key: abeacbc2-1691-417b-b637-522a89a28458
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e1798186-34c1-4425-8132-86b499d952a1')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e1798186-34c1-4425-8132-86b499d952a1','Training Education Subcategory','{
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
    "key": "e1798186-34c1-4425-8132-86b499d952a1",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Training Education Subcategory (Key: e1798186-34c1-4425-8132-86b499d952a1)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Training Education Subcategory (Key: e1798186-34c1-4425-8132-86b499d952a1)';
END

-- Type Of Harm (type-of-harm)
-- Prevalue Source Key: 61ae4c35-5ad7-4a1f-817f-d0a6099ba49c
-- lookupItemFolder Content Key: 30369262-38b7-4549-9917-f4a2f3e1b29d
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = 'e42ac4ca-12dd-424d-9bd3-8b80a2af8a1a')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('e42ac4ca-12dd-424d-9bd3-8b80a2af8a1a','Type Of Harm','{
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
    "key": "e42ac4ca-12dd-424d-9bd3-8b80a2af8a1a",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Type Of Harm (Key: e42ac4ca-12dd-424d-9bd3-8b80a2af8a1a)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Type Of Harm (Key: e42ac4ca-12dd-424d-9bd3-8b80a2af8a1a)';
END

-- Underlying Conditions (underlying-conditions)
-- Prevalue Source Key: 7f4c7fad-650c-4968-b6b8-725456225644
-- lookupItemFolder Content Key: 670d09fc-d986-48de-8298-a68f6fdba8af
-- Check if UFPrevalueSource with this Key already exists
IF NOT EXISTS (SELECT 1 FROM [mha-umbraco].[dbo].[UFPrevalueSource] WHERE [Key] = '29537a1a-4196-4779-95d6-be922c5540d5')
BEGIN
    INSERT INTO [mha-umbraco].[dbo].[UFPrevalueSource] ([Key]
          ,[Name]
          ,[Definition]
          ,[Created]
          ,[Updated]
          ,[CreatedBy]
          ,[UpdatedBy])
    VALUES ('29537a1a-4196-4779-95d6-be922c5540d5','Underlying Conditions','{
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
    "key": "29537a1a-4196-4779-95d6-be922c5540d5",
    "createDate": "2025-06-20T10:44:20.993Z",
    "updateDate": "2025-10-03T12:11:28.0611076-04:00",
    "deleteDate": null,
    "hasIdentity": true
}',GETDATE(),GETDATE(),-1,-1);
    
    PRINT 'Inserted UFPrevalueSource: Underlying Conditions (Key: 29537a1a-4196-4779-95d6-be922c5540d5)';
END
ELSE
BEGIN
    PRINT 'UFPrevalueSource already exists: Underlying Conditions (Key: 29537a1a-4196-4779-95d6-be922c5540d5)';
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
