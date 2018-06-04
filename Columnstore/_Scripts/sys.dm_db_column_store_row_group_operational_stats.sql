/*
    scan_count � delete_buffer_scan_count 
        C������ ��� ������ ����� � ����� �������� ���� ������������� � ������� ���������� ����������� SQL Server.
    index_scan_count 
        ����������, ������� ��� ������������ ������.
    rowgroup_lock_count , rowgroup_lock_wait_count � rowgroup_lock_wait_in_ms 
        ������������ ����������, ��������� � �����������, � ������� ���������� ����������� SQL Server.
*/

SELECT OBJECT_SCHEMA_NAME(ddcsrgos.object_id) + N'.' + OBJECT_NAME(ddcsrgos.object_id) AS object_name      
      ,i.name AS index_name
      ,i.type_desc AS index_type
      ,ddcsrgos.partition_number
      ,ddcsrgos.row_group_id
      ,ddcsrgos.index_scan_count
      ,ddcsrgos.scan_count
      ,ddcsrgos.delete_buffer_scan_count
      ,ddcsrgos.row_group_lock_count
      ,ddcsrgos.row_group_lock_wait_count
      ,ddcsrgos.row_group_lock_wait_in_ms
FROM   sys.dm_db_column_store_row_group_operational_stats AS ddcsrgos
       INNER JOIN sys.indexes AS i
               ON ddcsrgos.object_id = i.object_id
                  AND ddcsrgos.index_id = i.index_id
ORDER  BY object_name, index_name;