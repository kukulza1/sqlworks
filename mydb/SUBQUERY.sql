--���� ����(SUB QUERY) �μ�����
--�����߿��� ������ ���� ���� ������ �˻��Ͻÿ�
SELECT MAX(PRICE) FROM BOOK;

--�����߿��� ������ ������ �̸����˻�
SELECT BOOKNAME,PRICE
FROM BOOK
WHERE PRICE = (SELECT MAX(PRICE) FROM BOOK);--�������� SELECT�����ο�SELECT������

--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT CUSID FROM ORDERS;

SELECT NAME
FROM CUSTOMER 
WHERE CUSID IN(SELECT CUSID FROM ORDERS); -- WHERE CUSID IN(1,2,3,4);

--���ι��
--������ ������ �����ִ� ���� �̸��� �˻�
SELECT DISTINCT cus.name
FROM customer cus INNER JOIN orders ord
 ON CUS.CUSID =ord.cusid
 order by cus.name
  

