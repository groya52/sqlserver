USE master

-- �����, ����� �������������� ��� �������� ������ ����� �������� �����.
CREATE LOGIN LoginDataTransferSender
    WITH PASSWORD = 'Pa$$w0rd';

GO

CREATE USER UserDataTransferSender 
    FOR LOGIN LoginDataTransferSender;

GO

/*
    SELECT is_master_key_encrypted_by_server
    FROM   sys.databases
    WHERE  name = 'master';
*/

CREATE MASTER KEY ENCRYPTION
    BY PASSWORD = 'Pa$$w0rd';

GO

-- ���������� ��� ���������� ����� ����� ���������.
CREATE CERTIFICATE CertificateDataTransferSender
WITH
     SUBJECT = '�ertificate for the Service Broker TCP Endpoint'
    ,EXPIRY_DATE = '22220101';

GO

-- ����������, ��������� �� ������� ����������, 
-- ��� ����������� ������������ UserDataTransferSender.
CREATE CERTIFICATE CertificateDataTransferReceiver
     AUTHORIZATION UserDataTransferSender
     FROM FILE = 'C:\Program Files\Microsoft SQL Server\MSSQL13.INSTANCE02\MSSQL\Backup\CertificateDataTransferReceiver.cer';

GO

-- �������� ����� ��� ������ ����������� �������� Service Broker.
CREATE ENDPOINT EndpointDataTransfer
    STATE = STARTED
    AS TCP ( LISTENER_PORT = 4002 )
    FOR SERVICE_BROKER 
    (
        AUTHENTICATION = CERTIFICATE CertificateDataTransferSender
       ,ENCRYPTION = SUPPORTED
    );

GO

-- � �������� ����������� �� ������ ��������� ��� �� ������ ����� ���������� ������������.
GRANT CONNECT ON ENDPOINT::EndpointDataTransfer TO LoginDataTransferSender;

GO