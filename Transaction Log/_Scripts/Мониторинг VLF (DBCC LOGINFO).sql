/*
    FileId
        ������������� �����.
    Status
        ������ VLF. �������� 0 � 2 ��������� �� ���������� � �������� VLF, ��������������.
    FileSize
        ������ VLF � ������.
    StartOffset
        ��������� �������� VLF � �����.
    CreateLSN 
        LSN � ������ �������� VLF. 0 ��������, ��� VLF ��� ������ �� ����� �������� ���� ������.
    FSeqNo
        ������� ������������� VLF. VLF � ����� ������� FSeqNo �������� ������, � ������� �������� ������� ������ �������.
    Parity 
        ����� ���� ����� �� ���� ��������� ��������: 64 � 128. SQL Server ����������� �������� �������� ������ ���, ����� ������������ VLF. 
        SQL Server ���������� �������� ��������, ����� ����������, ��� ���������� ��������� ������� ������� �� ����� �������������� ����� ����.
*/

/*
    USE master;
    GO
    
    IF OBJECT_ID('dbo.LogInfo', 'U') IS NOT NULL
        DROP TABLE dbo.LogInfo;
    GO
    
    CREATE TABLE dbo.LogInfo
    (
        RecoveryUnitID int           NULL
       ,FileID         tinyint       NULL
       ,FileSize       bigint        NULL
       ,StartOffset    bigint        NULL
       ,FSeqNo         int           NULL
       ,Status         tinyint       NULL
       ,Parity         tinyint       NULL
       ,CreateLSN      numeric(25,0) NULL 
    );
    GO

    TRUNCATE TABLE dbo.LogInfo;

    INSERT INTO dbo.LogInfo EXEC ('DBCC LOGINFO');
GO

    SELECT FileID
          ,StartOffset
          ,FSeqNo
          ,Status
          ,CreateLSN
    FROM   dbo.LogInfo
    ORDER  BY CASE
              WHEN FSeqNo = 0 THEN 9999999
              ELSE FSeqNo 
              END;
GO
*/

DBCC LOGINFO;