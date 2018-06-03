USE master;

GO
-- https://docs.microsoft.com/ru-ru/sql/relational-databases/performance/monitoring-performance-by-using-the-query-store

USE master;

GO

ALTER DATABASE database_name SET QUERY_STORE = ON
(
    OPERATION_MODE = READ_WRITE
   ,DATA_FLUSH_INTERVAL_SECONDS = 900
   ,INTERVAL_LENGTH_MINUTES = 60
   ,MAX_STORAGE_SIZE_MB = 200
   ,CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 0)
   ,SIZE_BASED_CLEANUP_MODE = OFF
   ,QUERY_CAPTURE_MODE = ALL
);

GO
/*
ALTER DATABASE database_name SET QUERY_STORE 
(
    OPERATION_MODE = READ_WRITE
   ,DATA_FLUSH_INTERVAL_SECONDS = 900
   ,INTERVAL_LENGTH_MINUTES = 60
   ,MAX_STORAGE_SIZE_MB = 200
   ,CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 0)
   ,SIZE_BASED_CLEANUP_MODE = OFF
   ,QUERY_CAPTURE_MODE = ALL
);
*/
GO



/*
OPERATION_MODE
    READ_WRITE (�� ���������) - �������� � ��������� ����� ���������� � ���������� ������� ����������.
    READ_ONLY - ��������� ������ ������� �� ��������� ��������.

DATA_FLUSH_INTERVAL_SECONDS (�� ��������� 15 ����� (900 ������))
���������� �������, � ������� ������, ���������� � ��������� ��������, ����������� �� ����. ��� ����������� ������������������ ������, ��������� ���������� ��������, ���������� ������������ �� ����.

INTERVAL_LENGTH_MINUTES (�� ��������� 60 �����)
���������� ��������� �������� ���������� �������������� �������������� ������ � ����� ���������� � ��������� ��������. ��� ����������� ������������� ���������� ����� �������������� ������ ������� ���������� � ��������� ����������� ��� �������������� ��������� �������.

MAX_STORAGE_SIZE_MB (�� ��������� 100 ��, ������� ��������� ������ ���������� � �������� �������� ������)
����������� ������������ ������ ��������� ��������. ���� ������ � ��������� �������� ��������� ��������� �����������, ��������� �������� ������������� �������� ��������� � READ_WRITE �� READ_ONLY � ���������� ���� ����� ������.

CLEANUP_POLICY (STALE_QUERY_THRESHOLD_DAYS) (�� ��������� 30 ����)
������������ �������� ������ � ��������� ��������.

SIZE_BASED_CLEANUP_MODE (�� ��������� AUTO)
����������, ����� �� ������������� ������������ �������, ����� ����� ����� ������ ����������� � ������� ������� ����������� (80 ���������). ������� ���������� � �������� ������������� ��������. ����� ����� �������� AUTO ��� OFF.

QUERY_CAPTURE_MODE (�� ��������� ALL, SQL Server Azure AUTO)
���������� �������, ���������� � ��������� �������� (��� ������� ��� ������ ������ �������), ����������� �� ����������� ���������� � ����������� ��������; ���������� ������������ ������� �������� ��� ���������� �����.
����� ����� �������� ALL (�������������� ��� �������), AUTO (������������ ������ ������� � ������� � ����� ������������������ ���������� � ����������) ��� NONE (���������� ����������� ����� ��������).

MAX_PLANS_PER_QUERY (�� ��������� 200)
����� �����, �������������� ������������ ���������� �������������� ������ ��� ������� �������.
*/