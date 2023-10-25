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
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'����','û�ҿ���!','admin');
insert into board (bno,btitle,bcontent,bwriter)
values(seq.Nextval,'����','û�ҿ���!','admin');

--��ͺ���
insert into board(bno,btitle,bcontent,bwriter) 
(select seq.nextval,btitle,bcontent,bwriter from board);


update board set bcontent = '22';

delete from board
where bno = 4;

select *from board order by bno desc;

--ROWNUM�� �̿��� ������ó��
SELECT ROWNUM,BNO,BTITLE,BCONTENT,BWRITER,BDATE FROM BOARD
WHERE ROWNUM <11;

--ROWNUM�� ������ �����ؼ� 1�������� �����͸� ó��
SELECT * 
FROM (SELECT ROWNUM RN,BNO,BTITLE,BCONTENT,BWRITER,BDATE 
       FROM BOARD ORDER BY BNO DESC)
WHERE RN >10 AND RN<21;

--ROWID :�����͸� ������ �� �ִ� ������ ��
--       ������������ ���� ����� Ȯ���Ҽ� �ִ�.
--ROWID ������ �˻�����
SELECT ROWID,BNO,BTITLE FROM BOARD
WHERE ROWID = 'AAATOmAAHAAAAOFAAB';





commit;

drop table board;
truncate table board;
