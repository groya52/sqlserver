/*
    sys.dm_db_stats_properties (object_id, stats_id)

    object_id
        ������������� �������.
    stats_id
        ������������� ����������.

    rows
        ����� ���������� ����� ��� ��������� ���������� ����������.
    rows_sampled
        ����� ���������� �����, ���������� ��� ������� ����������.
    steps
        ���������� ����� � �����������.
    unfiltered_rows
        ����� ���������� ����� � ������� ����� ����������� ��������� �������.
    modification_counter
        ���������� �����������, ��������� ��� ����������� ����� � ������� ���������� ���������� ���������� ��� �������.
    persisted_sample_percent
        ���������� ������� �������, ������������ ��� �������������� ����������, ������� ���� �� ��������� ������� �������.
*/

SELECT OBJECT_SCHEMA_NAME(s.object_id) + N'.' + OBJECT_NAME(s.object_id) AS [object_name]
      ,s.[name] AS statistic_name
      ,ddsp.last_updated
      ,ddsp.[rows]
      ,ddsp.rows_sampled
      ,ddsp.steps
      ,ddsp.unfiltered_rows
      ,ddsp.modification_counter
FROM   sys.stats AS s
       CROSS APPLY sys.dm_db_stats_properties(object_id, stats_id) AS ddsp
WHERE  s.object_id = OBJECT_ID(N'Person.Address');