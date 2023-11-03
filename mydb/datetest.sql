--날짜 칼럼 
--1.create_date date default sysdate(현재 날짜와 시간)
--2.hire_date date (특정날짜)

select sysdate from dual;

--날짜와 시간
select systimestamp from dual;

--20일 전의 날짜 출력
select sysdate - 20 from dual;

--특정날짜에서 20일전
select to_date('2023-10-25') -20 from dual;

--서점의 주문확정일자

select orderid 주문번호, orderdate 주문일,
         to_date(orderdate)+10
from orders;



select*from book;

create table datetest1(
      reg_date date ,
      hire_date date
);
--추가1.
insert into datetest1 values(sysdate,'2023-11-01');
insert into datetest1 values(sysdate,to_date('2023-11-01'));

--
create table datetest2(
      reg_date date default sysdate,
      hire_date date
);
--추가2.
insert into datetest2(hire_date) values('2023-11-01');
insert into datetest2(hire_date) values(to_date('2023-11-01'));

select*from datetest2;

select*from datetest1;
drop table datetest1;






