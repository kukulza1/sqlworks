--��¥ Į�� 
--1.create_date date default sysdate(���� ��¥�� �ð�)
--2.hire_date date (Ư����¥)

select sysdate from dual;

--��¥�� �ð�
select systimestamp from dual;

--20�� ���� ��¥ ���
select sysdate - 20 from dual;

--Ư����¥���� 20����
select to_date('2023-10-25') -20 from dual;

--������ �ֹ�Ȯ������

select orderid �ֹ���ȣ, orderdate �ֹ���,
         to_date(orderdate)+10
from orders;



select*from book;

create table datetest1(
      reg_date date ,
      hire_date date
);
--�߰�1.
insert into datetest1 values(sysdate,'2023-11-01');
insert into datetest1 values(sysdate,to_date('2023-11-01'));

--
create table datetest2(
      reg_date date default sysdate,
      hire_date date
);
--�߰�2.
insert into datetest2(hire_date) values('2023-11-01');
insert into datetest2(hire_date) values(to_date('2023-11-01'));

select*from datetest2;

select*from datetest1;
drop table datetest1;






