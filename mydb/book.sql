--bookmall����
create table book(
    bookid NUMBER PRIMARY KEY,
    bookname  VARCHAR2(60) NOT NULL,
    publisher VARCHAR2(60) NOT NULL, 
    price NUMBER NOT NULL 
);
--�μ��ڷ� �߰�
INSERT INTO book VALUES (1,'�౸�ǿ���','�½�����',7000);
INSERT INTO book VALUES (2,'�౸�ƴ� ����','������',13000);
INSERT INTO book VALUES (3,'�౸������','���ѹ̵��',22000);
INSERT INTO book VALUES (4,'���� ���̺�','���ѹ̵��',35000);
INSERT INTO book VALUES (5,'�ǰܱ���','�½�����',8000);
INSERT INTO book VALUES (6,'����ǽ�ü','�½�����',6000);
INSERT INTO book VALUES (7,'�߱����߾�','�̻�̵��',20000);
INSERT INTO book VALUES (8,'�߱�����Ź��','�̻�̵��',13000);
INSERT INTO book VALUES (9,'�ø��� �̾߱�','�Ｚ��',7500);
INSERT INTO book VALUES (10,'olympic champion','Person',13000);

SELECT*FROM BOOK;

--��絵���� �̸��� ���ݸ� �˻�
SELECT bookname,price from book;
--�������̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�(�ߺ�����-DISTINCT)
--DISTINCT�� �ߺ��� �����ִ� ��ɾ�
SELECT DISTINCT publisher from book;
--������ 2�����̸��� ������ �˻�(������������ ����)
SELECT*FROM BOOK
WHERE PRICE<20000
ORDER BY price;
--������ �����̻�2���������� ������ �˻�
-- Į���� BETWEEN A AND B (>=,<=)
SELECT*FROM BOOK
WHERE price BETWEEN 10000 AND 20000; --Price >9999 and pice>20001;
--'�౸�ǿ���'���Ⱓ�� ���ǻ縦 �˻�
SELECT publisher from book
where bookname = '�౸�ǿ���';

SELECT publisher from book
where bookname like '�౸�ǿ���';
--�����̸��� '�౸'�����Ե� ���ǻ縦�˻�
SELECT bookname,publisher from book
where bookname like '%�౸%';
--�౸�� ���ѵ����� ������ 2�����̻��� ������ �˻�
SELECT*from book
where price>19999 and bookname like '%�౸%';
--������ �̸������� ������������
SELECT*FROM BOOK
ORDER BY bookname;
--������ ���ݼ����� �˻��ϰ� ���������̸� �̸��� ����������������
SELECT*FROM BOOK
ORDER BY price asc, bookname desc;

COMMIT;

ROLLBACK;

drop table book;