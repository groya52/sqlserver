/*
    ���������� ���� ���������� ���������� ����������.

    STATS_DATE(object_id, stats_id);

    object_id
        ������������� �������.
    stats_id
        ������������� ���������.
*/

/*
    SELECT s.[object_id]
          ,s.stats_id
    FROM   sys.stats AS s
    WHERE  s.name = N'PK_Address_AddressID';
*/

SELECT STATS_DATE(373576369, 1);
