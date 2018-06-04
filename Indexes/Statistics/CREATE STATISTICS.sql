/*
    CREATE STATISTICS statistics_name ON { table_or_indexed_view_name } ( column [ ,...n ] )
        [ WHERE <filter_predicate> ]  
        [ WITH   
            [ [ FULLSCAN   
                [ [ , ] PERSIST_SAMPLE_PERCENT = { ON | OFF } ]    
              | SAMPLE number { PERCENT | ROWS }   
                [ [ , ] PERSIST_SAMPLE_PERCENT = { ON | OFF } ]
            [ [ , ] NORECOMPUTE ]   
            [ [ , ] INCREMENTAL = { ON | OFF } ] 
            [ [ , ] MAXDOP = max_degree_of_parallelism ]
        ] ;  

    <filter_predicate> ::=   
        <conjunct> [AND <conjunct>]  

    <conjunct> ::=  
        <disjunct> | <comparison>  

    <disjunct> ::=  
            column_name IN (constant ,�)  

    <comparison> ::=  
            column_name <comparison_op> constant  

    <comparison_op> ::=  
        IS | IS NOT | = | <> | != | > | >= | !> | < | <= | !<  

    FULLSCAN
        ��������� ���������� ����� ������������ ���� �����.
    SAMPLE number { PERCENT | ROWS }
        ��������� ��������������� ���������� ����������� ��� ����� ����� � ������� ��� ��������������� ������������� ��� ������������ ��������, ������� ������������ ��� �������� ����������. 
    PERSIST_SAMPLE_PERCENT
        ��������� ������� ������� ������ ��� ����������� ����������, � ������� ���� �� ������ ������� �������.
    RESAMPLE
        �������� ������ ������ ����������, ��������� ��������� �������� ������� �������.
    NORECOMPUTE
        ��������� �������� ��������������� ���������� ���������� AUTO_UPDATE_STATISTICS ��� ��������� ����������.

    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/create-statistics-transact-sql
*/