/*
    https://docs.microsoft.com/en-us/sql/t-sql/statements/create-server-audit-transact-sql

    CREATE SERVER AUDIT audit_name  
        {  
            TO { [ FILE (<file_options> [ , ...n ] ) ] | APPLICATION_LOG | SECURITY_LOG }  
            [ WITH ( <audit_options> [ , ...n ] ) ]   
            [ WHERE <predicate_expression> ]  
        }  
    [ ; ]  

    <file_options>::=  
    {  
            FILEPATH = 'os_file_path'  
        [ , MAXSIZE = { max_size { MB | GB | TB } | UNLIMITED } ]  
        [ , { MAX_ROLLOVER_FILES = { integer | UNLIMITED } } | { MAX_FILES = integer } ]  
        [ , RESERVE_DISK_SPACE = { ON | OFF } ]   
    }  
    
    MAX_ROLLOVER_FILES
        ����� ���� ������ �����������, �� ������ ���� ��������� ����, ���� ������� ����� ����. 
        ������ �������� ����������, ������� ����� ������ ����� ���� �������������, 
        ������ ��� ��� ������ ���� (0 - ���� ����, 5 - ����� ������).        
    MAX_FILES
        ��������� ����������� �� ���������� ������ ������, ������� ����� ���� �������������, ����� ��� ����� ����� ����������, ������� �� ����� ���������� �����������. 
        ������ ����� ����� ����������� � �������, � �������, ������� �������� �������� ������, �������������� �� ������ ��������� ��� ON_FAILURE.
    RESERVE_DISK_SPACE
        ���� �������� ������� ��������� �� ����� ���� � ������������ �� ��������� MAXSIZE.
        �������������� �������� ������������ �� ����, ������ ��������, �������������� � MAXSIZE.


    <audit_options>::=  
    {  
        [   QUEUE_DELAY = integer ]  
        [ , ON_FAILURE = { CONTINUE | SHUTDOWN | FAIL_OPERATION } ]  
        [ , AUDIT_GUID = uniqueidentifier ]  
    }  
    
    QUEUE_DELAY
        ���������, ������������ �� ������� ������ ��������� ��� ����������.
        ���� ����������� �������� 0 , ������� ������������ � ������ ���������.
        � ��������� ������ ������� ����������������� � �������������, ������� ����� ������ �� ����, ��� ������� ����� ��������� ������.
        �������� �� ��������� - 1000 (1 �������), ��� ����� �������� ����������� ���������.
    ON_FAILURE
        ���������, ����� �� ���������, ����������� ������ � ������� ������, �������� ������, 
        ���������� ������ ��� ������������� SQL Server, ���� ������� ������ �� ����� ��������� ������ � ������ ������. 
        
        CONTINUE
            SQL Server ���������� ������. ������ ������ �� �����������.
            ����� ���������� ������� ����������� ������� � �������������� ����� ���������� ������� ����.
            
        SHUTDOWN
            �������� � ��������������� ���������� ������ ���������� SQL Server.

        FAIL_OPERATION
            �������� � ����� ������ ����������� �������, ���� ��� �������� ������� ������. 
            ��������, ������� �� �������� ������� ������, ����� ����������, �� ������� ������ ��������� �� �����. 
            ����� ���������� ������� ����������� ������� � �������������� ����� ���������� ������� ����.
    AUDIT_GUID
        ����� ������������ ����� ��������, ��� ���������� ����������� ���� ������, ������ ��������� ���������� ������������� GUID, 
        ������� ��������� � ��������������� GUID, ��������� � ���������� ���� ������. 
        ���� ������������� GUID �� ����� ���� ������� ����� �������� ������.

    <predicate_expression>::=  
    {  
        [NOT ] <predicate_factor>   
        [ { AND | OR } [NOT ] { <predicate_factor> } ]   
        [,...n ]  
    }  
    
    <predicate_factor>::=   
        event_field_name { = | < > | ! = | > | > = | < | < = } { number | ' string ' }  

    
    ALTER SERVER AUDIT
        https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-server-audit-transact-sql

    DROP SERVER AUDIT
        https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-server-audit-transact-sql
*/

USE Master
GO

CREATE SERVER AUDIT audit_name
TO FILE
(
    FILEPATH = 'os_file_path'
   ,MAXSIZE = 256 MB
   ,MAX_ROLLOVER_FILES = UNLIMITED
   ,RESERVE_DISK_SPACE = OFF
)
WITH
(
    QUEUE_DELAY = 1000
   ,ON_FAILURE = CONTINUE
)
WHERE object_name = 'sysadmin';
GO

/*
ALTER SERVER AUDIT audit_name
    WITH (STATE = ON);

DROP SERVER AUDIT audit_name;
*/