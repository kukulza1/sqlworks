--자바 게시판 구현할 board테이블 생성
CREATE TABLE board(
    bno      number primary key,
    btitle   VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL,  --CLOB(CHARACTER LARGE OF BYTE)
    bwriter  VARCHAR2(50) NOT NULL,
    bdate    DATE DEFAULT SYSDATE    
);
Create Sequence seq nocache;

insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'가입인사','안녕하세요~~하잉','today12');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'공지','청소예정!','admin');

select *from board
order by bno desc;
commit;
