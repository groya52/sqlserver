-- �������� ���� �������� � ���������� GUID ������.

DECLARE @DialogHandle UNIQUEIDENTIFIER;

-- ������ ������ � GUID ������ AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE.
BEGIN DIALOG CONVERSATION @DialogHandle  
    FROM SERVICE [//Communication/ServiceDataTransfer]
    TO SERVICE '//Communication/ServiceDataTransfer'
    ON CONTRACT [//Communication/ContractDataTransfer]
    WITH RELATED_CONVERSATION_GROUP = 'AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE'
        ,ENCRYPTION = OFF;
 
SEND ON CONVERSATION @DialogHandle
    MESSAGE TYPE [//Communication/Message] (FORMAT(SYSDATETIME(), 'yyyyMMdd HH:mm:ss'));
 
 
-- ������ ������ � GUID ������ AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE.
BEGIN DIALOG CONVERSATION @DialogHandle  
    FROM SERVICE [//Communication/ServiceDataTransfer]
    TO SERVICE '//Communication/ServiceDataTransfer'
    ON CONTRACT [//Communication/ContractDataTransfer]
    WITH RELATED_CONVERSATION_GROUP = 'AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE'
        ,ENCRYPTION = OFF;
 
SEND ON CONVERSATION @DialogHandle
    MESSAGE TYPE [//Communication/Message] (FORMAT(SYSDATETIME(), 'yyyyMMdd HH:mm:ss'));
 
-- ��� ������� � GUID ������ AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE.
SELECT conversation_handle
      ,conversation_group_id
      ,conversation_id
      ,is_initiator
      ,state_desc
      ,far_service
FROM   sys.conversation_endpoints
WHERE  conversation_group_id = 'AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE';

GO