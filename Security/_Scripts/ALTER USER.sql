/*
    https://docs.microsoft.com/ru-ru/sql/t-sql/statements/alter-user-transact-sql

    ALTER USER userName    
         WITH <set_item> [ ,...n ]  
    [;]
    
    <set_item> ::=   
          NAME = newUserName   
        | DEFAULT_SCHEMA = { schemaName | NULL }  
        | LOGIN = loginName  
        | PASSWORD = 'password' [ OLD_PASSWORD = 'oldpassword' ]
        | DEFAULT_LANGUAGE = { NONE | <lcid> | <language name> | <language alias> }
        | ALLOW_ENCRYPTED_VALUE_MODIFICATIONS = [ ON | OFF ]

    ALLOW_ENCRYPTED_VALUE_MODIFICATIONS 
        ��������� �������� ����������� ���������� �� ������� � ��������� ��������� �����������.
        ��� ��������� ������������ ������� ���������� ������������� ������ ����� ��������� ��� ������ ������ ��� ����������� ������.
*/