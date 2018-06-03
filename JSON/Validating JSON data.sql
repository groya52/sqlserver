/*
ISJSON ( expression )

1 - ������� ������ ������������� JSON.
0 - ������� ������ ���������������.
NULL - ������� ��������� NULL.
*/

SELECT ISJSON('test')     -- 0
      ,ISJSON('')         -- 0 
      ,ISJSON('{}')       -- 1
      ,ISJSON('{"a"}')    -- 0 
      ,ISJSON('{"a":1}')  -- 1
      ,ISJSON('{"a":1"}') -- 0

SELECT ISJSON('{"id": 1, "id": "a"}') -- 1