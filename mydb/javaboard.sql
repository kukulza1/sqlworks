--자바 게시판 구현할 board테이블 생성
CREATE TABLE board(
    bno      number primary key,
    btitle   VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL,  --CLOB(CHARACTER LARGE OF BYTE)
    bwriter  VARCHAR2(50) NOT NULL,
    bdate    DATE DEFAULT SYSDATE    
);
Create Sequence seq nocache;
drop sequence seq;

insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'가입인사','안녕하세요~~하잉','today12');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'공지','청소예정!','admin');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'공지','청소예정!','admin');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'공지','청소예정!','admin');

--재귀복사
insert into board(bno,btitle,bcontent,bwriter) 
(select seq.nextval,btitle,bcontent,bwriter from board);


update board set bcontent = '22';

delete from board
where bno = 4;

select *from board order by bno desc;

--ROWNUM을 이용한 페이지처리
SELECT ROWNUM,BNO,BTITLE,BCONTENT,BWRITER,BDATE FROM BOARD
WHERE ROWNUM <11;

--ROWNUM을 변수에 저장해서 1번이후의 데이터를 처리
SELECT * 
FROM (SELECT ROWNUM RN,BNO,BTITLE,BCONTENT,BWRITER,BDATE 
       FROM BOARD ORDER BY BNO DESC)
WHERE RN >10 AND RN<21;

--ROWID :데이터를 구분할 수 있는 유일한 값
--       데이터파일의 저장 블록을 확인할수 있다.
--ROWID 데이터 검색가능
SELECT ROWID,BNO,BTITLE FROM BOARD
WHERE ROWID = 'AAATOmAAHAAAAOFAAB';





commit;

drop table board;
truncate table board;
