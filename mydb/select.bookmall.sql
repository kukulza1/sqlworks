SELECT*FROM ORDERS;
--�ֹ����̺��� Į��,�ڷ��� ����
desc orders;
--����Լ�- ����(COUNT), �հ�SUM, ���AVG, �ִ밪MAX, �ּҰ�MIN
--count(*):'*'-Į����
--count(Į����):
SELECT COUNT(orderid) as ���ǸŰǼ�
FROM orders;

SELECT COUNT(*) AS �Ѱ���, COUNT(PHONE) AS ��ȭ��ȣ��
FROM customer;

SELECT SUM(saleprice) AS ���Ǹž�,
  AVG(saleprice) as �����
from orders;


--������ �ֹ��� ���������� ������ ���Ǹž������
--���������� 3���̻��� �ڷ�˻�
--�׷����� ������ ��� -group by Į����
--having�� ��� -group by������ ������ ������ ���
SELECT cusid, count(*)as ��������, SUM(saleprice) AS ���Ǹž�
from orders
GROUP BY cusid;
--having count(*)>=3;
--and sum(saleprice)>34999;



SELECT  MAX(PRICE)AS �ְ�,MIN(PRICE) ������ FROM BOOK;

--3����(�Ȼ�)�� �ֹ��� ������ �� �Ǹž� ���ϱ�
SELECT sum(saleprice) as ���Ǹž�
FROM orders
where cusid = 3;

--����(join)
--��������(EQUI JOIN):equal(=)�� ����ϴ� ����
--���̺��A.Į����=���̺�B.Į����//Į��-�ܷ�Ű ����
--���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT customer.name,orders.saleprice
from orders, customer
where orders.cusid = customer.cusid;

--3������ ���̵�,�����̸�,�ֹ�����
select customer.cusid,orders.saleprice,book.bookname
from orders,customer,book
where orders.cusid=customer.cusid
  and orders.bookid = book.bookid
  and customer.name = '�Ȼ�';
  
select cusid,bookname,saleprice
  FROM orders,book
  WHERE orders.bookid = book.bookid
  AND ORDERS.CUSID =3;
  
--��Ī�������
select cus.name,ord.saleprice
from customer cus,orders ord --��Ī ����
where cus.cusid=ord.cusid
order by cus.name,ord.saleprice desc;--���̸��� ������������,���ݺ� ������������


