USE master

/*
    SELECT is_master_key_encrypted_by_server
    FROM   sys.databases
    WHERE  name = 'master';
*/

CREATE MASTER KEY ENCRYPTION 
    BY PASSWORD = 'Pa$$w0rd';

GO

-- ���������� ��� ���������� ����� ����� ���������.
CREATE CERTIFICATE CertificateDataTransferReceiver
WITH
     SUBJECT = '�ertificate for the Service Broker TCP Endpoint'
    ,EXPIRY_DATE = '22220101';

GO

BACKUP CERTIFICATE CertificateDataTransferReceiver 
    TO FILE = 'C:\Program Files\Microsoft SQL Server\MSSQL13.INSTANCE01\MSSQL\Backup\CertificateDataTransferReceiver.cer';

GO

-- �������� ����� ��� ������ ����������� �������� Service Broker.
CREATE ENDPOINT EndpointDataTransfer
    STATE = STARTED
    AS TCP ( LISTENER_PORT = 4001 )
    FOR SERVICE_BROKER 
    ( 
        AUTHENTICATION = CERTIFICATE CertificateDataTransferReceiver
       ,ENCRYPTION = SUPPORTED
    );

GO

-- � �������� ����������� �� ������ ��������� ��� �� ������ ����� ���������� ������������.
GRANT CONNECT ON ENDPOINT::EndpointDataTransfer TO PUBLIC;

GO

