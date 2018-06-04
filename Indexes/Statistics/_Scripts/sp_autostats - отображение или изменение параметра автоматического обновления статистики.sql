/*
    sp_autostats [ @tblname = ] 'table_or_indexed_view_name'   
        [ , [ @flagc = ] 'stats_value' ]   
        [ , [ @indname = ] 'statistics_name' ] 

    table_or_indexed_view_name
        ��� ������� ��� ���������������� �������������.
    stats_value
        ��������� �������� AUTO_UPDATE_STATISTICS, ���������� ��� ON ��� OFF.
    
        ����� stats_flag � �� ������, ������������ ������� �������� AUTO_UPDATE_STATISTICS.
    statistics_name
        ��� ������� ���������� ��� ����������� ��� ���������� ��������� AUTO_UPDATE_STATISTICS.
        
        �������� �� ��������� NULL.

    https://docs.microsoft.com/ru-ru/sql/relational-databases/system-stored-procedures/sp-autostats-transact-sql
*/