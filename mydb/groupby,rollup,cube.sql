--ROLLUP(), CUBE(), GROUPING SETS()
CREATE TABLE tbl_dept(
        deptno varchar2(3),
        jobname    varchar2(30),
        salary   number       
);

insert into tbl_dept values('100','���ǻ�',3300000);
insert into tbl_dept values('100','������',4300000);
insert into tbl_dept values('200','���ǻ�',5000000);
insert into tbl_dept values('200','�����ͺм���',4000000);
insert into tbl_dept values('200','������',6000000);
insert into tbl_dept values('100','������',2500000);

--�μ���ü�� �ο����� �޿��հ�
select count(*), sum(salary) from tbl_dept;

--�μ���,�����̸��� �ο����� �޿��հ�
select deptno,count(*), sum(salary),jobname from tbl_dept
group by deptno,jobname; 

--�μ���,�����̸��� �ο����� �޿��հ�(�Ѱ�,�Ұ�)
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
