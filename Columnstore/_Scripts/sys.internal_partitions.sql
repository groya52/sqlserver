/*
    internal_object_type � internal_object_type_desc 
        ��� ����������� �������.
    row_group_id 
        ������ ����� ��� delta store.
    rows 
        ���������� ����� � �������.
    data_compression � data_compression_desc
        ������������� ���������� � ������ ������ ����������� �������.
*/

SELECT OBJECT_SCHEMA_NAME(ip.object_id) + N'.' + OBJECT_NAME(ip.object_id) AS object_name      
      ,i.name AS index_name
      ,i.type_desc AS index_type
      ,ip.hobt_id
      ,ip.internal_object_type_desc
      ,ip.row_group_id
      ,ip.rows
      ,ip.data_compression_desc
FROM   sys.internal_partitions AS ip
       INNER JOIN sys.indexes AS i
               ON ip.object_id = i.object_id
                  AND ip.index_id = i.index_id;