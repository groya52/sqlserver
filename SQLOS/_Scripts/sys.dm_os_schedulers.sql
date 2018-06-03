/*
    runnable_tasks_count
        ���������� ���������� ������� ������� � ������� ���������� ��� ����������� ������������.
    quant_length_us
        ���������� �����, ������������ �������������, ������� ������ ���������� ������ ������������.
*/

SELECT scheduler_id
      ,parent_node_id
      ,cpu_id
      ,is_online
      ,is_idle
      ,status
      ,runnable_tasks_count
      ,quant_length_us

FROM   sys.dm_os_schedulers;