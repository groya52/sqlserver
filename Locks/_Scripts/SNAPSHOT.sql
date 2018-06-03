/*
    ALTER DATABASE { database_name  | CURRENT } SET ALLOW_SNAPSHOT_ISOLATION ON
        [ WITH ROLLBACK AFTER integer [ SECONDS ]
             | ROLLBACK IMMEDIATE
             | NO_WAIT ];

    ROLLBACK AFTER integer [SECONDS] | ROLLBACK IMMEDIATE
        ���������, ����� �� �������� ���������� ����� ��������� ���������� ������ ��� ����������.
    NO_WAIT
        ���������, ��� ���� ��������� ��������� ��������� ��� ��������� ���� ������ �� ����� ���� ��������� ���������� ��� �������� �������� ��� ������ ���������� ��� ����������, 
        �� ������ �������� �������.
*/

ALTER DATABASE CURRENT SET ALLOW_SNAPSHOT_ISOLATION OFF;
GO