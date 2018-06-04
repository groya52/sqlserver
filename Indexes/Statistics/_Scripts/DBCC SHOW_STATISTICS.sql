/*
    DBCC SHOW_STATISTICS ( table_or_indexed_view_name, target )  [ WITH [ NO_INFOMSGS ] < option > [ , n ] ]
    
    < option > :: = STAT_HEADER | DENSITY_VECTOR | HISTOGRAM | STATS_STREAM

    table_or_indexed_view_name
        ��� ������� ��� ���������������� �������������, ��� �������� ������ ���� ���������� �������������� ������.
    target
        ��� �������, ���������� ��� �������, ��� �������� ������������ �������������� ������.
    
    NO_INFOMSGS
        ��������� ��� �������������� ��������� �� ��������� ����������� �� 0 �� 10.

    STAT_HEADER | DENSITY_VECTOR | HISTOGRAM | STATS_STREAM
        �������� ������ ��� ����� �� ���� ���������� ������������ �������������� ������. ���� ��������� �� �������, �� ������������ ��� �������������� ������.
    
    HISTOGRAM
        RANGE_HI_KEY
            ������� �������� ������� ��� ����� �����������.
        RANGE_ROWS
            ��������� ���������� �����, �������� ������� ������� ��������� �� ����� �����������, �������� ������� �������.
        EQ_ROWS
            ��������� ���������� �����, �������� ������� ������� ����� ������� ������� ���� �����������.
        DISTINCT_RANGE_ROWS
            ��������� ���������� ����� � ��������� ��������� ������� �� ����� �����������, �������� ������� �������.
        AVG_RANGE_ROWS
            ������� ���������� ����� � �������������� ���������� �������� �� ����� �����������, �������� ������� ������� (RANGE_ROWS / DISTINCT_RANGE_ROWS ��� DISTINCT_RANGE_ROWS > 0).
            � ��� �������, ������� ����� ����� �������, ����� ����������� �����-���� ���� �������� ��� �������� �������� �� ����������.

    https://www.safaribooksonline.com/library/view/expert-performance-indexing/9781484211182/9781484211199_Ch03.xhtml#Sec2
*/

USE AdventureWorks2014;
GO

DBCC SHOW_STATISTICS ('Person.Address', PK_Address_AddressID);
GO