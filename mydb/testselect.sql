--�ǽ�
--1.������ �̸��� �ּҸ� �˻��Ͻÿ�
SELECT name,address FROM CUSTOMER;
--2.������ �̸� �ּ� ��ȭ��ȣ�� �˻��Ͻÿ�
SELECT name,address,phone FROM CUSTOMER; 
--3.�ּҰ� ������ ���� �˻��Ͻÿ�
SELECT*from customer
where address like '����%';
--4.���� �̸��� '�迬��'Ȥ��'�Ȼ�'�ΰ��� �˻��Ͻÿ�
SELECT*from customer
where name in('�迬��','�Ȼ�');
--5.�ּҰ� ���ѹα��� �ƴ� ���� �˻��Ͻÿ�
SELECT*from customer
where address not like '���ѹα�%';
--6.��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
SELECT*from customer
where phone is null;
--7.���� �̸������� �����Ͻÿ�
SELECT*from customer
order by name;
--8.���� ���ο����� ���Ͻÿ�
SELECT count(*) as �Ѱ��� from customer;





