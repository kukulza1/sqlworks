select *from drink;

--���̺� ����
CREATE table drink2 as
select*from drink;

select*from drink2;

--��ͺ���(insert into ~ select) ,values������
insert into drink2
select*from drink2;

--rownum(sudo column-������ ������ Į��)
select rownum,drink_code,drink_name
from drink2
where rownum >0 and rownum<11; --�ο���� ������ 1���� ���۵Ǿ����
--where rownum >1 and rownum<11; --�ȵ�

--from�� �������� ���-�ζ��κ�
--rn������� : rownum�� ������ 1���� ���۵Ǿ�� �˻��̵ǹǷ� rn�̶�� ����(��Ī)��
--1���� ���ڷ� ù�����������ϰ� ��
select *
from (select rownum rn,drink_code,drink_name from drink2) 
--where rownum >10 and rownum<21; 
where rn >10 and rn<21; --��Ī(����)���� ��������


