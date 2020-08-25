-- 여기는 user1
SELECT * FROM tbl_product;

SELECT MIN(p_code) FROM tbl_product;

SELECT MAX(p_code) FROM tbl_product;

INSERT INTO tbl_product (p_code, p_name)
VALUES('P00001', '테스트 상품');

COMMIT;

INSERT INTO tbl_product (p_code, p_name)
VALUES ('P001', '테스트 상품');

SELECT * FROM tbl_product WHERE p_code = RPAD('P001', 6,'');

SELECT RPAD('가',10,'P') FROM DUAL;

DELETE FROM tbl_product;

SELECT * FROM tbl_product;
/*
table에서 1개의 칼럼을 PK를 설정할 수 없을 경우
2개 이상의 칼럼을 묶어서 PK로 설정을 한다.

하지만 아래 테이블에서 sc_num, sc_subject를 묶어서
PK로 설정할 경우 sc_subject 칼럼이 가변문자열인 관계로
나중에 문제를 일으킬수 있다.

이러한 테이블에서는 데이터와 별도로 SEQ(ID)라는 칼럼을 만들고
해당 칼럼을 일련번호 등을 부여하고 
PK로 만드는 것이 좋다.
*/
CREATE TABLE tbl_score (
-- seq!
-- alter unique
    sc_num char(5),
    sc_subject nvarchar2(20),
    sc_score number    
);


