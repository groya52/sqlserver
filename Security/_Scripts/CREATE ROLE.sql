/*
    https://docs.microsoft.com/en-us/sql/t-sql/statements/create-role-transact-sql

    CREATE ROLE role_name [ AUTHORIZATION owner_name ]

    AUTHORIZATION owner_name
        ������������ (��� ����) ���� ������, ������� ������ ���������� ����� ����. 
        ���� ������������ �� ������, ���������� ���� ������ ������������, ����������� ���������� CREATE ROLE.
*/

CREATE ROLE role_name AUTHORIZATION owner_name;  