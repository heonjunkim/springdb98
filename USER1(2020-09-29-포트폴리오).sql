
CREATE TABLE tbl_iolist (
    seq	NUMBER		PRIMARY KEY,
    io_date	VARCHAR2(10),		
    io_time	VARCHAR2(10),		
    io_pname	nVARCHAR2(30),		
    io_input	CHAR(1),		
    io_price	NUMBER,		
    io_quan	NUMBER,		
    io_total	NUMBER		
);




SELECT * FROM tbl_iolist;
