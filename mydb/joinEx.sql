H--���� : �� ���̺��� ���� �����Ͽ� ����ϴ±��
--��������(equi join):���������� ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
--�ܺ�����(out join):���������� ��ġ���� �ʾƵ� ��� ����� ���
--��ü����:

--��(customer)�� �����ֹ�(orders)�� ���� �����͸� ��� �˻��Ͻÿ� (��������)
--���̸����� ����(�ڵ����� �׷�ȭ ��)
ss;

select cus.name,ord.saleprice FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid
ORDER BY CUS.name;


--�ֹ��������� �����͵� ��� �˻� (�ܺ�����)
--������ ��ġ�������� ���̺� +���־���
SELECT cus.name,ord.saleprice FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid(+)
ORDER BY CUS.name;


--���� �̸��� �ֹ��� �����̸� �ֹ���,�ֹ��ݾ�
SELECT cus.name,bk.bookname,ord.orderdate,ord.saleprice
FROM customer cus,book bk,orders ord
where cus.cusid = ord.cusid --�⺻Ű=�ܷ�Ű
and bk.bookid = ord.bookid;

--���� ���� �ֹ������ѵ����͸� ��� �˻��Ͻÿ�
--����:������ ���� �ֹ������� �˻��Ͻÿ�
--�ֹ��ݾ��� �Ѿ��� ���
SELECT cus.name,ord.saleprice 
FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid and cus.name ='������'
ORDER BY CUS.name;

--���� �ֹ� �ݾ��� �Ѿ��� ���
--�׷캰 �ѱݾ��� ��� group by
--�迬�� ���� �ֹ� �ѱݾ��� ���(having���� ������ ��)
SELECT cus.cusid, cus.name, sum(ord.saleprice) 
FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid 
group BY cus.cusid, cus.name
--having cus.name ='�迬��'
ORDER BY CUS.name;

--ǥ������(ANSI SQL)
--��������(INNER JOIN)
--��customer�� �����ֹ�orders�� ���� �������߰��� �̸��� �����ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT cus.name,ord.saleprice
FROM customer cus INNER JOIN orders ord --inner��������
 ON CUS.CUSID =ord.cusid
 order by cus.name;
 
 --�ܺ� ����(outer join) join���ǿ� �����ϴ� �����Ͱ� �ƴϾ ����ϴ±��
 --customer��orders������ �������� �ֹ����� ���� �����͸� �����Ͽ� ���� �̸��� ���� �ֹ���
 --������ �ǸŰ������˻��Ͻÿ�
 SELECT CUS.NAME,ORD.SALEPRICE
 FROM CUSTOMER CUS LEFT OUTER JOIN ORDERS ORD
 ON CUS.CUSID=ORD.CUSID;



