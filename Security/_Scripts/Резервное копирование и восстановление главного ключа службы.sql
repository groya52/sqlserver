-- ��������� ����������� �������� ����� ������.
BACKUP SERVICE MASTER KEY
    TO FILE = '�:\Keys\service_master_key'
    ENCRYPTION BY PASSWORD = 'Pa$$w0rd';
GO

-- ��������� �������������� �������� ����� ������.
RESTORE SERVICE MASTER KEY
    FROM FILE = 'C:\Keys\service_master_key'
    DECRYPTION BY PASSWORD = 'Pa$$w0rd';
GO