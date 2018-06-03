/*
    value
        ������������� �������� ���������.
    value_in_use
        ������� �������� ���������.
    minimum
        ����������� �������� ��������� ������������.
    maximum
        ������������ �������� ��������� ������������.
    is_dynamic
        ����������, ���������� � ���� ����� ���������� ���������� RECONFIGURE.
    is_advanced
        ���������� ������������ ������ �����, ����� show advancedoption ����� ��������.
*/

SELECT name
      ,value
      ,value_in_use
      ,minimum
      ,maximum
      ,description
      ,is_dynamic
      ,is_advanced
FROM   sys.configurations
ORDER  BY name;
GO