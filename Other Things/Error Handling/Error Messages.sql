SELECT sl.alias AS language_alias
      ,m.message_id
      ,m.severity
      ,m.text
FROM   sys.messages AS m
       INNER JOIN sys.syslanguages AS sl
               ON m.language_id = sl.msglangid
WHERE  sl.name = 'us_english'
ORDER  BY sl.name;

/*
    sp_addmessage [ @msgnum= ] msg_id 
                 ,[ @severity= ] severity
                 ,[ @msgtext= ] 'msg'
                  [ , [ @lang= ] 'language' ]   
                  [ , [ @with_log= ] { 'TRUE' | 'FALSE' } ]   
                  [ , [ @replace= ] 'replace' ]

    message_id
        ������������� ��������� (� ��������� �� 50 001 �� 2 147 483 647).
    severity
        C���������� ������ (�� 1 �� 25).
    
    sp_dropmessage [ @msgnum = ] message_number  
                   [ , [ @lang = ] 'language' ]
*/
