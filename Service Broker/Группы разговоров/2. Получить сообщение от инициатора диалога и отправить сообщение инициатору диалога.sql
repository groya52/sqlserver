DECLARE @DialogHandle UNIQUEIDENTIFIER;

-- ��������� ������� ���������.
RECEIVE @DialogHandle = conversation_handle
FROM [communication].[QueueReceivedData];
 
SEND ON CONVERSATION @DialogHandle
MESSAGE TYPE [//Communication/Message] (FORMAT(SYSDATETIME(), 'yyyyMMdd HH:mm:ss'));

-- ��������� ������� ���������.
RECEIVE @DialogHandle = conversation_handle
FROM [communication].[QueueReceivedData];
 
SEND ON CONVERSATION @DialogHandle
MESSAGE TYPE [//Communication/Message] (FORMAT(SYSDATETIME(), 'yyyyMMdd HH:mm:ss'));

GO