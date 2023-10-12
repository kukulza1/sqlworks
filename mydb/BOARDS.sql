--게시판테이블
CREATE TABLE BOARDS(
    bno      number primary key,
    btitle   VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL,  --CLOB(CHARACTER LARGE OF BYTE)
    bwriter  VARCHAR2(50) NOT NULL,
    bdate    DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),   
    bfiledata BLOB          --BLOB(BINARY LARGE OF BYTE)

);
--시퀀스 생성
CREATE SEQUENCE seq_bno NOCACHE;

--게시글 추가
INSERT INTO BOARDS(bno,btitle,bcontent,bwriter)
VALUES (seq_bno.nextval,'smartphone','삼성갤럭시21입니다.','TODAY');
INSERT INTO BOARDS(bno,btitle,bcontent,bwriter,bdate,bfilename,bfiledata)
VALUES (seq_bno.nextval,'smartphone','삼성갤럭시21입니다.','TODAY',SYSDATE,
         NULL,NULL);


SELECT*FROM BOARDS 
where bwriter ='SKY123'
ORDER BY bno DESC;

COMMIT;











