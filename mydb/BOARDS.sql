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

ORDER BY bno DESC;

--글번호 6번의 제목을 아이폰으로 변경
update  boards set btitle = 'iphone' , bcontent= '아이폰15입니다'
where bno =6;

delete from boards
where bno =1;

rollback;

COMMIt;











