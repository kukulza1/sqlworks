--��޸ű��,ntile()
create table exscore(
     �̸� varchar2(20),
     ���� number,
     ���� number,
     ���� number
);

insert into exscore values('���ѳ�',116,77,75);
insert into exscore values('���ѳ�',101,69,80);
insert into exscore values('���ѳ�',118,62,60);
insert into exscore values('���ѳ�',96,72,70);
insert into exscore values('���ѳ�',103,77,55);
insert into exscore values('���ѳ�',78,66,61);
insert into exscore values('���ѳ�',85,72,75);
insert into exscore values('���ѳ�',99,70,53);
insert into exscore values('���ѳ�',105,75,69);
insert into exscore values('���ѳ�',117,68,73);

select*from exscore;

--ntile(��޼�) over(drder by Į����)
--�־��� ����ŭ ����� n����� �� �����࿡ �ش��ϴ� ����� ���ϴ� �Լ�
select �̸�,����,ntile(8) over(order by ���� desc) ������
from exscore;
--���ϳ��� ������ ������
select �̸�,����,ntile(8) over(order by ���� desc) ������
from exscore
where �̸� <>'���ѳ�'; -- <>�� =�� �ݴ�

select �̸�,����,ntile(8) over(order by ���� desc) ������, ����,

����,ntile(8) over(order by ���� desc) ���е��, ����,

����,ntile(8) over(order by ���� desc) ������, ����

from exscore;


truncate table exscore;
commit;