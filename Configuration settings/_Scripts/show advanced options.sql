EXEC sp_configure 'show advanced options', 1; 
GO

RECONFIGURE;
GO

/*
    config_value
        ��������, � ������� ��� ���������� �������� ������������.
    run_value
        ������� �������� �������� ��������� ������������.
*/

EXEC sp_configure;
GO