/*
    https://docs.microsoft.com/en-us/sql/t-sql/statements/create-login-transact-sql

    CREATE LOGIN login_name { WITH <option_list1> | FROM <sources> }  

    <option_list1> ::=   
        PASSWORD = { 'password' | hashed_password HASHED } [ MUST_CHANGE ]  
        [ , <option_list2> [ ,... ] ]  

    MUST_CHANGE        
        ���� ���� �������� �����, �� ��� ������ ������������� ������ ����� ����� SQL Server ������������� ����� ������.

    <option_list2> ::=    
        SID = sid  
        | DEFAULT_DATABASE = database      
        | DEFAULT_LANGUAGE = language  
        | CHECK_EXPIRATION = { ON | OFF}  
        | CHECK_POLICY = { ON | OFF}  
        | CREDENTIAL = credential_name   
    
    CHECK_EXPIRATION
        ���������, ������ �� �������� ��������� ����� �������� ������� ����������� � ����� ����� �����.
    CHECK_POLICY        
        ���������, ��� �������� ������� Windows ����������, �� ������� �������� SQL Server, ������ ����������� � ����� ����� �����.
    CREDENTIAL
        ��� ������� ������ ��� ������������� � ����� ������ ����� SQL Server.
        
    <sources> ::=  
        WINDOWS [ WITH <windows_options>[ ,... ] ]  
        | CERTIFICATE certname  
        | ASYMMETRIC KEY asym_key_name  

    <windows_options> ::=        
        DEFAULT_DATABASE = database
        | DEFAULT_LANGUAGE = language
*/