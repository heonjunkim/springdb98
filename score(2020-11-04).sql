CREATE TABLE tbl_sc (
학번 CHAR(5),
학과 CHAR(3),
국어 NUMBER,
영어 NUMBER,
수학 NUMBER,
평균 NUMBER
);
DROP TABLE tbl_sc;
SELECT * FROM tbl_sc;
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20001','001','64','65','79','74.6');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20002','003','70','92','99','82');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20003','002','56','55','52','77');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20004','001','67','57','55','86.6');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20005','003','75','58','74','75');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20006','004','52','97','78','77');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20007','005','85','72','92','72.3');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20008','002','62','64','62','77.6');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20009','003','81','95','86','78.3');
INSERT INTO tbl_sc(학번,학과,국어,영어,수학,평균) VALUES('20010','004','93','77','79','83');

SELECT 학번,학과,국어,영어,수학,
    (국어 + 영어+ 수학) AS 총점,
    (국어 + 영어+ 수학)/3 AS 평균
FROM tbl_sc;    

SELECT 평균 FROM tbl_sc WHERE 평균 >= '60';


UPDATE tbl_sc SET 국어  =  '92' WHERE 학번  = '20007' ;
UPDATE tbl_sc SET 영어  = '90' WHERE 학번=  '20007';
UPDATE tbl_sc SET 수학  = '88' WHERE 학번  = '20007' ;


SELECT * FROM tbl_sc;
COMMIT;
DELETE FROM tbl_sc WHERE 학번='20010';


UPDATE tbl_sc SET 국어='66',영어='79',수학='79' WHERE 학번='20001';
UPDATE tbl_sc SET 국어='56',영어='93',수학='97' WHERE 학번='20002';
UPDATE tbl_sc SET 국어='99',영어='60',수학='72' WHERE 학번='20003';
UPDATE tbl_sc SET 국어='93',영어='69',수학='98' WHERE 학번='20004';
UPDATE tbl_sc SET 국어='51',영어='87',수학='87' WHERE 학번='20005';
UPDATE tbl_sc SET 국어='65',영어='79',수학='87' WHERE 학번='20006';
UPDATE tbl_sc SET 국어='54',영어='99',수학='64' WHERE 학번='20007';
UPDATE tbl_sc SET 국어='100',영어='78',수학='55' WHERE 학번='20008';
UPDATE tbl_sc SET 국어='91',영어='88',수학='56' WHERE 학번='20009';

SELECT SUM(국어+영어+수학) AS 전체총점, AVG(국어+영어+수학) AS 전체평균 FROM tbl_sc