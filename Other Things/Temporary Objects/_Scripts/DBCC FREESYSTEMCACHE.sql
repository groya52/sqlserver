/*
    MARK_IN_USE_FOR_REMOVAL
        ���������� ����������� ������� ������������ �������� �� ��������������� ����� ����� ����, ��� ��� ��������� ��������������.
*/
DBCC FREESYSTEMCACHE('Temporary Tables & Table Variables')
    WITH MARK_IN_USE_FOR_REMOVAL;
GO