--emp
CREATE Table emp(
  empno   number(3) primary key, --사원번호
  ename   varchar2(20) not null,--사원이름
  gender  varchar2(6) not null, --성별
  salary  number(10),           --급여
  hire_date varchar2(20) not null --입사일
  );
  
insert into emp values(100,'이강','남자',3000000,'2019-01-01');
insert into emp values(101,'김산','여자',2500000,'2020-05-15');
insert into emp values(102,'오상식','남자',5000000,'2015-02-22');
insert into emp values(103,'박신입','여자',null,'2023-10-01');

commit;

select *from emp;

--실습문제 풀이
--1.사원을 입사일순으로 정렬하시오
select *from emp
order by hire_date;

2.사원을 급여순으로 정렬하시오
select *from emp
order by salary;

--3.rmqdurk 300만원이하인사원을 급여가 많은순으로 정렬하시오
select *from emp
where salary <3000001
order by salary desc;

--4.급여가없는 사원을 검색하시오
select *from emp
where salary is null;
--5.사원의 총 수를 구하시오
select count(ename) from emp;

--6.사원의 급여 합계와 평균을 구하시오
select sum(salary)총합,
 avg(salary)평균
 from emp;
 --7.이름이 김산인 사원의 성별을 남자로 변경하시오
update emp set gender = '남자'
where ename ='김산';
 --8.이름이 오상식인사원을 삭제하시오
 delete from emp
 where ename ='오상식';
 
 commit;
 
 --반올림:round(숫자,자리수)
select ename,salary 급여,
round(salary/30,-2) 일당,
round(salary/30,0) 일당,
round(salary/30,1) 일당
from emp;
 
 













