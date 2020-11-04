CREATE TABLESPACE scoreTS
DataFile 'C:/bizwork/workspace/oracle_data/scoreTS.dbf'
SIZE 1M                
AUTOEXTEND ON NEXT 1K; 

CREATE USER score
IDENTIFIED BY score 
DEFAULT TABLESPACE scoreTS; 


GRANT DBA TO score;


