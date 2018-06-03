/*
    sp_addumpdevice [ @devtype = ] 'device_type'
    , [ @logicalname = ] 'logical_name'
    , [ @physicalname = ] 'physical_name'

    sys.backup_devices
*/

-- ��������� ����. 
EXEC sp_addumpdevice 'disk', 'Lokal', 'X:\BackupName.bak';

-- ������� ����. 
EXEC sp_addumpdevice 'disk', 'Network', '\\ServerName\BackupName.bak'; 

-- �����. 
EXEC sp_addumpdevice 'tape', 'Tape', '\\.\tape0';