-- BBS 프로젝트
CREATE TABLE tbl_bbs (
    b_seq	NUMBER		PRIMARY KEY,
    b_date	VARCHAR2(10)	NOT NULL,	
    b_time	VARCHAR2(10)	NOT NULL,	
    b_writer	nVARCHAR2(30)	NOT NULL,
    b_subject	nVARCHAR2(125)	NOT NULL,
    b_content	nVARCHAR2(2000)	NOT NULL,
    b_count	NUMBER,	
    b_file	NVARCHAR2(125)		
);

CREATE SEQUENCE SEQ_BBS
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_bbs;

DELETE FROM tbl_bbs;
COMMit;
