/*
    DBCC IND ( {'database_name' | database_id | 0}, {'table_name' | table_id}, {'index_name' | index_id | -1} );

    'database_name' | database_id
        ��� ���� ������ ��� ������������� ���� ������. ���� ��� ����� ��������� ������ �������� 0, ����� �������������� ������� ���� ������.
    'table_name' | table_id
        ��� ������� ��� ������������� �������.
    'index_name' | index_id | -1
        ��� ������� ��� ������������� �������. ���� �������� -1, �� ����� ����� �������� ���������� ��� ���� �������� � �������.

    https://www.safaribooksonline.com/library/view/expert-performance-indexing/9781484211182/9781484211199_Ch02.xhtml#Sec22
*/

DBCC IND ('AdventureWorks2014', 'Person.Address', 1);