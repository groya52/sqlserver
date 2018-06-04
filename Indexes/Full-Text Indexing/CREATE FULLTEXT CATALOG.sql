/*
    CREATE FULLTEXT CATALOG catalog_name  
         [WITH <catalog_option>]  
         [AS DEFAULT]  
         [AUTHORIZATION owner_name ]  
    
    <catalog_option> ::= ACCENT_SENSITIVITY = {ON|OFF}

    ACCENT_SENSITIVITY = {ON|OFF}
        ���������, ����� �� ������� ��������� �������������� ����� ��� ��������������� ��������������. ���� ��� �������� ��������, ������ ���������������.

    AS DEFAULT
        ���������, ��� ������� �������� ��������� �� ���������. ��������� ����� ������ �������� AS DEFAULT ������� ���� ������� �������������� ��������� �� ���������.

    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/create-fulltext-catalog-transact-sql
*/