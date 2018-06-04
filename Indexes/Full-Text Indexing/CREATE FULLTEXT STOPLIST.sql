/*
    CREATE FULLTEXT STOPLIST stoplist_name  
    [ FROM { [ database_name.]source_stoplist_name } | SYSTEM STOPLIST ]  
    [ AUTHORIZATION owner_name ]  
    ;  

    source_stoplist_name
        ���������, ��� ����� ������ ����-���� ��������� ������������ ������������� ������ ����-����.

    SYSTEM STOPLIST
        ���������, ��� ����� ������ ����-���� ��������� �� ������ ����-����, ��� ���������� �� ��������� � ���� ������ Resource.

    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/create-fulltext-stoplist-transact-sql

    ALTER FULLTEXT STOPLIST stoplist_name  
    {   
        ADD [N] 'stopword' LANGUAGE language_term    
      | DROP   
        {  
            'stopword' LANGUAGE language_term   
          | ALL LANGUAGE language_term   
          | ALL  
        }  
    }
    ;  

    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/alter-fulltext-stoplist-transact-sql
*/