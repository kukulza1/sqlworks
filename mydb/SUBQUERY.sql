--���� ����(SUB QUERY) �μ�����
--�����߿��� ������ ���� ���� ������ �˻��Ͻÿ�
SELECT MAX(PRICE) FROM BOOK;

--�����߿��� ������ ������ �̸����˻�
SELECT BOOKNAME,PRICE
FROM BOOK
WHERE PRICE =(SELECT MAX(PRICE) FROM BOOK);--�������� SELECT�����ο�SELECT������

--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT CUSID FROM ORDERS;

--������ ��������
--���������������� ���� ���� �̸����
SELECT NAME
FROM CUSTOMER 
WHERE CUSID not in (SELECT CUSID FROM ORDERS);-- =(SELECT CUSID FROM ORDERS)x 
--���������������� �ִ� ���� �̸����
SELECT NAME
FROM CUSTOMER 
WHERE CUSID not in (SELECT CUSID FROM ORDERS);

--from���� �ִ� ��������-�ζ��κ�
--����ȣ�� 2������ ���� �̸��� ���� �Ǹž� �˻�
select a.name, sum(b.saleprice) total from customer a , orders b 
   where a.cusid = b.cusid and a.cusid<3
   group by a.name
   Having  sum(b.saleprice)>=30000;
   
   
--��Į�� ��������:select ���� �ִ� select���� ����
--��ǰ���� ���̺� �ִ� ��ǰ�̸� �˻�
select a.name, sum(b.saleprice) 
from (select *from customer where customer.cusid<3) a ,orders b 
where a.cusid = b.cusid group by a.name;
   
select*from product;
select*from product_review;

--��ǰ�������̺� ���� ��ǰ�̸� �˻�
select  b.product_code,
        (select a.product_name from product a 
        where b.product_code=a.product_code)productname,
        b.memberid, b.content     
from  product_review b;

--���ι��
--������ ������ �����ִ� ���� �̸��� �˻�
SELECT DISTINCT cus.name
FROM customer cus INNER JOIN orders ord
 ON CUS.CUSID =ord.cusid
 order by cus.name
 
 --������� 1.from�� ���̺�� 2.where��,group by 3.select�� 4.order�� 

