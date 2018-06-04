/*
    CREATE FULLTEXT INDEX ON table_name  
       [ ( { column_name   
                 [ TYPE COLUMN type_column_name ]  
                 [ LANGUAGE language_term ]   
                 [ STATISTICAL_SEMANTICS ]  
            } [ ,...n]   
          ) ]
        KEY INDEX index_name
        [ ON <catalog_filegroup_option> ]
        [ WITH [ ( ] <with_option> [ ,...n] [ ) ] ]
    [;]

    <catalog_filegroup_option>::=  
    {  
       fulltext_catalog_name   
    | ( fulltext_catalog_name, FILEGROUP filegroup_name )  
    | ( FILEGROUP filegroup_name, fulltext_catalog_name )  
    | ( FILEGROUP filegroup_name )  
    }  
    
    <with_option>::=  
    {  
      CHANGE_TRACKING [ = ] { MANUAL | AUTO | OFF [, NO POPULATION ] }   
    | STOPLIST [ = ] { OFF | SYSTEM | stoplist_name }
    | SEARCH PROPERTY LIST [ = ] property_list_name   
    }  

    TYPE COLUMN type_column_name
        ������ ��� �������, ������� �������� ��� ��������� ��� ����������, ����������� � ���� BLOB, ����� ��� .doc, .pdf � .xls. 
        ��� ����� ������������ ������ ��� varbinary, varbinary(max) � ����� ������ �����������. 

    STATISTICAL_SEMANTICS
        ������� �������������� ������� �������� ���� � ������� ����������, ������� �������� ������ ��������������� �������������� ��������������.
    
    KEY INDEX index_name
        ��� ������� ����������� ������� � table_name. ������ KEY INDEX ������ ���� ���������� �������� � ����� ������, �� ����������� �������� NULL.
        ������� ���������� ��������� ������ ����� ��� ��������������� ����������� �����. 
        ��� ����������� ������������������ ������������� ������������ ��� �������������� ������ ��� ������ integer.

    CHANGE_TRACKING [ = ] { MANUAL | AUTO | OFF [, NO POPULATION ] }  
        ���������, ����� �� SQL Server �������������� �� �������������� ������ ��������� (����������, �������� ��� �������), ����������� � �������� �������, ������� �������� � �������������� ������. 
        ��������� ������, ��������� � ������� ���������� WRITETEXT � UPDATETEXT, �� ���������� � �������������� ������� � �� ���������� ��� ������������ ���������.
        �������� AUTO ������������ �� ���������.

        MANUAL
            ���������, ��� ������������� ��������� ������ ���������������� ������� ����� ������ ���������� ALTER FULLTEXT INDEX � START UPDATE POPULATION.
            ����� SQL Server ����� ������������ ��� �������������� ������ ���������� Transact-SQL .
            
        AUTO (�� ���������)
            ���������, ��� ������������� ��������� ����� ���������������� ������������� ��� ���������� ������ � ������� ������� (�������������� ����������). 
            ��������� ����� ���������������� �������������, ������ ��� �� ������, ��� ��� ����� ���������� ���������� � �������������� �������. 
            
        OFF 
            ���������, ��� � SQL Server �� �������� ������ ��������� ��������������� ������.
        
        [ , NO POPULATION]
            ���� �������� NO POPULATION �� ������, SQL Server ��������� ������ ���������, ����� ���� ��� �� ��� ������.
            
            �������� NO POPULATION ����� �������������� ������ � ��� ������, ���� ��������� CHANGE_TRACKING ��������� �������� OFF. 
            ���� ������ �������� NO POPULATION, SQL Server �� ��������� ������ ����� ��� ��������. 
            ������ ����������� ������ ����� ���������� ������������� ������� ALTER FULLTEXT INDEX � ������������ START FULL POPULATION ��� START INCREMENTAL POPULATION.
            
    STOPLIST [ = ] { OFF | SYSTEM | stoplist_name }  
        ��������� �������������� ������ ����-���� � ��������. ������ �� ����������� ��������, ������� �������� ������ ���������� ������ ����-����. 
        ���� ������ STOPLIST �� ������, SQL Server ��������� � �������� ��������� �������������� ������ ����-����.
            
        OFF
            ���������, ��� � �������������� �������� �� ������ �� ���� �� ������� ����-����.

        SYSTEM
            ���������, ��� ��� ��������������� ������� ������ �������������� ��������� �������������� ������ ����-����.

        stoplist_name
            ������ ��� ������ ����-����, ������� ����� ������ � �������������� ��������.

    SEARCH PROPERTY LIST [ = ] property_list_name
        ��������� ������ ������� ������ � ��������.

        OFF
            ���������, ��� � �������������� �������� �� ������ �� ���� ������ �������.

        property_list_name
            ������ ��� ������ ������� ������, ������� ����� ������ � �������������� ��������.

    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/create-fulltext-index-transact-sql
*/