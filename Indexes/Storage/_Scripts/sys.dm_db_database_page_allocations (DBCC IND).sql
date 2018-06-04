/*
    sys.dm_db_database_page_allocations ( {database_id}, {table_id | NULL}, {index_id | NULL}, {partition_id | NULL}, {DETAILED | LIMITED} )

    database_id
        ������������� ���� ������.
    table_id | NULL
        ������������� �������. NULL �������������� ��� �������� ���� ������.
    index_id | NULL
        ������������� �������. NULL �������������� ��� �������� ���������� ��� ���� ��������.
    partition_id | NULL
        ������������� �������. NULL �������������� ��� �������� ���������� ��� ���� ��������.
    DETAILED | LIMITED
        LIMITED
            ���������� ���������� ����������� ��������, ������ ��� ������������� ������� � ���������� � ����������������.
        DETAILED
            ��������������� �������������� ����������, ����� ��� ���� ������� � ���� ��������� ����� ����������. 
    
    https://www.safaribooksonline.com/library/view/expert-performance-indexing/9781484211182/9781484211199_Ch02.xhtml#Sec23
*/

SELECT *
FROM   sys.dm_db_database_page_allocations(DB_ID('AdventureWorks2014'), OBJECT_ID('Person.Address'), 1, NULL, 'DETAILED');