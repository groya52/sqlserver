/*
    SELECT name 
          ,page_verify_option_desc 
    FROM   sys.databases;

    ALTER DATABASE { database_name  | CURRENT }  SET PAGE_VERIFY { CHECKSUM | TORN_PAGE_DETECTION | NONE }

    TORN_PAGE_DETECTION - ���������� ������� SQL Server, ��� �� ����� �������� � ������� �������.

    ��������� ��������� PAGE_VERIFY �� �������� ������������ �������� CHECKSUM �� ��������� ������.
    CHECKSUM ������������ ������ �����, ����� �������� ������������ �� ���� ����� ����, ��� ��������������.
*/

ALTER DATABASE CURRENT SET PAGE_VERIFY CHECKSUM WITH NO_WAIT;