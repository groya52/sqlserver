/*
    sp_spaceused [[ @objname = ] 'objname' ]   
    [, [ @updateusage = ] 'updateusage' ]  
    [, [ @mode = ] 'mode' ]  
    [, [ @oneresultset = ] oneresultset ]  
    [, [ @include_total_xtp_storage = ] include_total_xtp_storage ]

    @objname
        ��� ������� ��� ���������������� �������������.
    @updateusage
        ���������, ��� ��� ���������� �������� �� ������������� ����� �� ����� ������� ��������� ���������� DBCC UPDATEUSAGE.
*/

EXEC sp_spaceused N'dbo.FactInternetSales', TRUE;