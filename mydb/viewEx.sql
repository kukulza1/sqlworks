--��(VIEW)����
--����,���� ����
--�ּҿ�'���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�
CREATE VIEW VW_customer
as SELECT*FROM customer
WHERE address like '���ѹα�%';

select *from vw_customer;

--�̸��� �迬�Ƹ� ���������� ������
update vw_customer
set name ='������'
where name = '�迬��';

--�����̵� 3�ΰ��� ����
--�����ϰ��ִ� �ٸ����̺����־� �����Ұ���
delete from vw_customer  where cusid = 3;

commit;
--���� �����ֹ��� ���� ������ �˻�
create view vw_book_order as 
select cs.name,bk.bookname,od.saleprice
from book bk,customer cs, orders od
where bk.bookid = od.bookid and cs.cusid=od.cusid;

select *from vw_book_order;

select count(*) from vw_book_order;



--�� ����
drop view vw_customer;