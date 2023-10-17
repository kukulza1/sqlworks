--department 
CREATE TABLE DEPARTMENT(
     deptno    varchar2(4) primary key,
     deptname  varchar2(20) not null, 
     office     varchar2(20)     
);
insert into department values('1000','인사팀','서울');
insert into department values('1001','전산팀','인천');
insert into department values('1002','전산팀','수원');
insert into department(deptno,deptname) values('1003','영업팀');

commit;
update department set deptname ='총무팀' where deptno = 1002;


CREATE TABLE employee(
      empno NUMBER(3), 
      empname VARCHAR2(20) NOT NULL,
      sal NUMBER(30),
      createdate DATE DEFAULT SYSDATE,
      deptno varchar2(4),
      PRIMARY KEY(empno),
      FOREIGN KEY(deptno) REFERENCES department(deptno)
);
INSERT INTO employee values(100,'이강',2500000,sysdate,'1000');
INSERT INTO employee values(101,'김산',2000000,sysdate,'1001');
INSERT INTO employee values(102,'박달',3000000,sysdate,'1002');
INSERT INTO employee values(103,'강태양',3500000,sysdate,'1000');
INSERT INTO employee values(104,'최우주',5000000,sysdate,'1001');
INSERT INTO employee values(105,'우영우',4000000,sysdate,'1002');

commit;

select*from employee;
--부서별 급여총액
select deptno, sum(sal)급여총액 from employee a group by deptno;

--부서이름과 부서별 급여총액을 출력하시오
select b.deptno,b.deptname,sum(sal)급여총액 from employee a,department b
where a.deptno=b.deptno
group by b.deptname ,b.deptno;

--rollup():group by절에서 소계,총계를만듬
select b.deptno,b.deptname,sum(sal)급여총액 from employee a,department b
where a.deptno=b.deptno
group by rollup(b.deptno,b.deptname);

--cube(칼럼1,칼럼2):group by절에서 모든소계총계를 입체적으로 만듬
select b.deptno,b.deptname,sum(sal)급여총액 from employee a,department b
where a.deptno=b.deptno
group by cube(b.deptno,b.deptname) order by b.deptno;

--sum(칼럼명)over(ORDER BY 칼럼명) -누적합계
--레이블에 칼럼명을 소문자로 표기하고 싶을때, 쌍따옴표로 감싸줄것
--순위 rank() over(order by 칼럼명)함수
select empno,
       empname,
       sal,
    sum(sal) OVER(ORDER BY EMPNO) "sal_sum",  
    dense_rank() over(order by sal desc) 급여_denseRank
from employee;

--강태양사원의 급여를 3백만원으로 변경
update employee set sal= 3000000
where empname ='강태양';




drop table employee;










