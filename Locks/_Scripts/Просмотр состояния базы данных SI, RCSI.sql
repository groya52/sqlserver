/*
    snapshot_isolation_state_desc
        OFF
            SI �������� � ���� ������.
        IN_TRANSITION_TO_ON
            ���� ������ ��������� � �������� ��������� SI.             
        ON
            SI ������� � ���� ������.
        IN_TRANSITION_TO_OFF
            ���� ������ ��������� � �������� ���������� SI.

    is_read_committed_snapshot_on
        OFF
            RCSI ��������� � ���� ������.
        ON
            RCSI ������� � ���� ������.
*/

SELECT database_id
      ,name
      ,snapshot_isolation_state_desc
      ,is_read_committed_snapshot_on
FROM   sys.databases
ORDER  BY database_id;
GO