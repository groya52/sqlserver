-- ���������� ���������� �����������.
SELECT cpu_count AS logical_cpu
      ,cpu_count / hyperthread_ratio AS physical_cpu
FROM   sys.dm_os_sys_info;
GO

-- ���������� ms_ticks �������� ���������� ����������� � ������� ���������� ������� ����������.
SELECT DATEADD(SECOND, - (ms_ticks / 1000), SYSDATETIME()) AS computer_last_start
FROM   sys.dm_os_sys_info;
GO