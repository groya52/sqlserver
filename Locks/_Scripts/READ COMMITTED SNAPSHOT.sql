/*
    ALTER DATABASE { database_name  | CURRENT } SET READ_COMMITTED_SNAPSHOT ON
        [ WITH ROLLBACK AFTER integer [ SECONDS ]
             | ROLLBACK IMMEDIATE
             | NO_WAIT ];

    ROLLBACK AFTER integer [SECONDS] | ROLLBACK IMMEDIATE
        ���������, ����� �� �������� ���������� ����� ��������� ���������� ������ ��� ����������.
    NO_WAIT
        ���������, ��� ���� ��������� ��������� ��������� ��� ��������� ���� ������ �� ����� ���� ��������� ���������� ��� �������� �������� ��� ������ ���������� ��� ����������, 
        �� ������ �������� �������.
*/

ALTER DATABASE CURRENT SET READ_COMMITTED_SNAPSHOT ON;
GO