--ROLLUP(), CUBE(), GROUPING SETS()
CREATE TABLE tbl_dept(
        deptno varchar2(3),
        jobname    varchar2(30),
        salary   number       
);

insert into tbl_dept values('100','증권사',3300000);
insert into tbl_dept values('100','관리자',4300000);
insert into tbl_dept values('200','증권사',5000000);
insert into tbl_dept values('200','데이터분석가',4000000);
insert into tbl_dept values('200','관리자',6000000);
insert into tbl_dept values('100','관리자',2500000);

--부서전체의 인원수와 급여합계
select count(*), sum(salary) from tbl_dept;

--부서별,직업이름별 인원수및 급여합계
select deptno,count(*), sum(salary),jobname from tbl_dept
group by deptno,jobname; 

--부서별,직업이름별 인원수및 급여합계(총계,소계)
select deptno,count(*), sum(salary),jobname from tbl_dept
group by rollup(deptno,jobname); 

select deptno,count(*), sum(salary),jobname from tbl_dept
group by cube(deptno,jobname)
order by deptno;

select deptno,count(*), sum(salary),jobname from tbl_dept
group by grouping sets(deptno,jobname)
order by deptno;

truncate table tbl_dept;

commit;
