/*
    sp_createstats   
        [   [ @indexonly =   ] { 'indexonly'   | 'NO' } ]   
        [ , [ @fullscan =    ] { 'fullscan'    | 'NO' } ]   
        [ , [ @norecompute = ] { 'norecompute' | 'NO' } ]  
        [ , [ @incremental = ] { 'incremental' | 'NO' } ]  
    
    indexonly
        ������� ���������� ������ �� ��������, ������� ������ � ������������ ������, 
        ������ �� ���� �� �������� �� ������ ���� ������ �������� � ����������� �������.

        �������� �� ��������� NO.
    fullscan
        ���������� CREATE STATISTICS ���������� � FULLSCAN ��������.
        
        �������� �� ��������� NO.    
    norecompute
        ���������� CREATE STATISTICS ���������� � NORECOMPUTE ��������.

        �������� �� ��������� NO.    
    incremental
        ���������� CREATE STATISTICS ���������� � INCREMENTAL = ON ��������.

        �������� �� ��������� NO.
    
    �������� ���� ��������: 0 (�������� ����������) ��� 1 (���������� ����������).

    https://docs.microsoft.com/ru-ru/sql/relational-databases/system-stored-procedures/sp-createstats-transact-sql
*/