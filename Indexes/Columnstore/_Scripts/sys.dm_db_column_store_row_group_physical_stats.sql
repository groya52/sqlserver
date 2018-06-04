/*
    partition_number
        ����� ������� � �������.
    row_group_id
        ������������� ������ ����� ������ �������.
    delta_store_hobt_id
        hobt_id ��������� ��������� ������.    
    state � state_description
        ���������� ��������� ������ �����.    
    total_rows
        ����� ����� �����, ������� ��������� �������� � ������ �����.
    deleted_rows 
        ����� ����� ����� � ������ �����, ������� �������� ��� ���������.    
    size_in_bytes 
        ������ ������ ����� �� �����.
    transition_to_compressed_state � transition_to_compressed_state_desc
        ������� ������ ������ �����.
    trim_reason � trim_reason_desc
        ���������, ������ ������ ����� ����� ����� 1 048 576 �����.
    generation 
        ���������� ���������� �����, � ������� ���� ������� ������ �����.

     ������� transition_to_compressed_state � trim_reason_desc ����� ������������, 
     ��� ���������� ��������, ����� ������ �������� �������� ������� ���������� �������� ����������� ����� ����� � �������.
*/

SELECT OBJECT_SCHEMA_NAME(ddcsrgps.object_id) + N'.' + OBJECT_NAME(ddcsrgps.object_id) AS object_name      
      ,i.name AS index_name
      ,i.type_desc AS index_type
      ,ddcsrgps.partition_number
      ,ddcsrgps.row_group_id
      ,ddcsrgps.delta_store_hobt_id
      ,ddcsrgps.state_desc AS state
      ,ddcsrgps.total_rows
      ,ddcsrgps.deleted_rows
      ,ddcsrgps.size_in_bytes
      ,ddcsrgps.transition_to_compressed_state_desc AS transition_to_compressed_state
      ,ddcsrgps.trim_reason_desc AS trim_reason
      ,ddcsrgps.generation
      ,ddcsrgps.has_vertipaq_optimization
      ,ddcsrgps.created_time
      ,ddcsrgps.closed_time
FROM   sys.dm_db_column_store_row_group_physical_stats AS ddcsrgps
       INNER JOIN sys.indexes AS i
               ON ddcsrgps.object_id = i.object_id
                  AND ddcsrgps.index_id = i.index_id
ORDER  BY object_name, index_name;