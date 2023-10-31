--조건처리 함수
create table mytest(
       class varchar2(1),
       name  varchar2(6)
       
);



insert into mytest values('A','조조');
insert into mytest values('A','조조');
insert into mytest values('A','조조');
insert into mytest values('b','유비');
insert into mytest values('b','관우');
insert into mytest values('c','여포');
insert into mytest values('c','여포');

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

--반별인원수
select count(*)인원수 from mytest
group by class;


--중복이름제거후 반별인원수 계산
select class, count(distinct name)인원수 from mytest
group by class;

--decode(칼럼명,조건,참,거짓)

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

--mytest2 조건처리
--col1의 데이터가 null이면 0으로 표기함

select 
    decode(T.col1,null,-1,T.col1) --참일경우 3번째 자리값 출력 
from mytest2;

select 
      
       case
        when T.col1 is null then -1
        else T.col1
       end data2
       from mytest2 T;

select*from mytest2;








