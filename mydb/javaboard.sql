--�ڹ� �Խ��� ������ board���̺� ����
CREATE TABLE board(
    bno      number primary key,
    btitle   VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL,  --CLOB(CHARACTER LARGE OF BYTE)
    bwriter  VARCHAR2(50) NOT NULL,
    bdate    DATE DEFAULT SYSDATE    
);
Create Sequence seq nocache;

insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'�����λ�','�ȳ��ϼ���~~����','today12');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'����','û�ҿ���!','admin');

select *from board
order by bno desc;
commit;
