--�ڹ� �Խ��� ������ board���̺� ����
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
values(seq.Nextval,'�����λ�','�ȳ��ϼ���~~����','today12');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'����','û�ҿ���!','admin');

update board set bcontent = '22';

delete from board
where bno = 4;

select *from board
order by bno desc;
commit;

truncate table board;
