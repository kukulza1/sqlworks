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


--�� ����
drop view vw_customer;