/*
    UPDATE STATISTICS table_or_indexed_view_name ( { index_or_statistics_name } [ ,...n ] )
    [    WITH   
        [  
            FULLSCAN   
              [ [ , ] PERSIST_SAMPLE_PERCENT = { ON | OFF } ]    
            | SAMPLE number { PERCENT | ROWS }   
              [ [ , ] PERSIST_SAMPLE_PERCENT = { ON | OFF } ]    
            | RESAMPLE   
              [ ON PARTITIONS ( { <partition_number> | <range> } [, �n] ) ]
        ]   
        [ [ , ] [ ALL | COLUMNS | INDEX ]   
        [ [ , ] NORECOMPUTE ]   
        [ [ , ] INCREMENTAL = { ON | OFF } ] 
        [ [ , ] MAXDOP = max_degree_of_parallelism ] 
    ] ;  


    FULLSCAN
        ��������� ���������� ����� ��������� ���� ����� � ������� ��� ��������������� �������������.
    SAMPLE number { PERCENT | ROWS }
        ��������� ��������������� ���������� ����������� ��� ����� ����� � ������� ��� ��������������� ������������� ��� ������������ ��������, ������� ������������ ��� ���������� ����������.
    PERSIST_SAMPLE_PERCENT
        ��������� ������� ������� ������ ��� ����������� ����������, � ������� ���� �� ������ ������� �������.
    RESAMPLE
        �������� ������ ������ ����������, ��������� ��������� �������� ������� �������.

    ALL | COLUMNS | INDEX
        �������� ��� ������������ ����������, ��������� �� ������ ��� ���������� ��������, ��� ����������, ��������� ��� ��������.
    NORECOMPUTE
        ��������� �������� ��������������� ���������� ���������� AUTO_UPDATE_STATISTICS ��� ��������� ����������.

    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/update-statistics-transact-sql
*/