--����ó�� �Լ�
create table mytest(
       class varchar2(1),
       name  varchar2(6)
       
);



insert into mytest values('A','����');
insert into mytest values('A','����');
insert into mytest values('A','����');
insert into mytest values('b','����');
insert into mytest values('b','����');
insert into mytest values('c','����');
insert into mytest values('c','����');

create table mytest2(
      col1 number(1)
      
);

insert into mytest2 values(null);
insert into mytest2 values(0);
insert into mytest2 values(null);
insert into mytest2 values(0);
insert into mytest2 values(null);

commit;


select*from mytest2;
select*from mytest;

--�ݺ��ο���
select count(*)�ο��� from mytest
group by class;


--�ߺ��̸������� �ݺ��ο��� ���
select class, count(distinct name)�ο��� from mytest
group by class;

--decode(Į����,����,��,����)

select count( decode(class,'A',1)) A,
      count( decode(class,'b',1)) b,
       count( decode(class,'c',1)) c

from mytest;

select 
    count(case
      when class='A' then 1
     end) A,
      count(case
      when class='b' then 1
     end) b,
      count(case
      when class='c' then 1
     end) c

from mytest;

--mytest2 ����ó��
--col1�� �����Ͱ� null�̸� 0���� ǥ����

select 
    decode(T.col1,null,-1,T.col1) --���ϰ�� 3��° �ڸ��� ��� 
from mytest2;

select 
      
       case
        when T.col1 is null then -1
        else T.col1
       end data2
       from mytest2 T;

select*from mytest2;








