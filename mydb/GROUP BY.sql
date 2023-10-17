--department 
CREATE TABLE DEPARTMENT(
     deptno    varchar2(4) primary key,
     deptname  varchar2(20) not null, 
     office     varchar2(20)     
);
insert into department values('1000','�λ���','����');
insert into department values('1001','������','��õ');
insert into department values('1002','������','����');
insert into department(deptno,deptname) values('1003','������');

commit;
update department set deptname ='�ѹ���' where deptno = 1002;


CREATE TABLE employee(
      empno NUMBER(3), 
      empname VARCHAR2(20) NOT NULL,
      sal NUMBER(30),
      createdate DATE DEFAULT SYSDATE,
      deptno varchar2(4),
      PRIMARY KEY(empno),
      FOREIGN KEY(deptno) REFERENCES department(deptno)
);
INSERT INTO employee values(100,'�̰�',2500000,sysdate,'1000');
INSERT INTO employee values(101,'���',2000000,sysdate,'1001');
INSERT INTO employee values(102,'�ڴ�',3000000,sysdate,'1002');
INSERT INTO employee values(103,'���¾�',3500000,sysdate,'1000');
INSERT INTO employee values(104,'�ֿ���',5000000,sysdate,'1001');
INSERT INTO employee values(105,'�쿵��',4000000,sysdate,'1002');

commit;

select*from employee;
--�μ��� �޿��Ѿ�
select deptno, sum(sal)�޿��Ѿ� from employee a group by deptno;

--�μ��̸��� �μ��� �޿��Ѿ��� ����Ͻÿ�
select b.deptno,b.deptname,sum(sal)�޿��Ѿ� from employee a,department b
where a.deptno=b.deptno
group by b.deptname ,b.deptno;

--rollup():group by������ �Ұ�,�Ѱ踦����
select b.deptno,b.deptname,sum(sal)�޿��Ѿ� from employee a,department b
where a.deptno=b.deptno
group by rollup(b.deptno,b.deptname);

--cube(Į��1,Į��2):group by������ ���Ұ��Ѱ踦 ��ü������ ����
select b.deptno,b.deptname,sum(sal)�޿��Ѿ� from employee a,department b
where a.deptno=b.deptno
group by cube(b.deptno,b.deptname) order by b.deptno;

--sum(Į����)over(ORDER BY Į����) -�����հ�
--���̺� Į������ �ҹ��ڷ� ǥ���ϰ� ������, �ֵ���ǥ�� �����ٰ�
--���� rank() over(order by Į����)�Լ�
select empno,
       empname,
       sal,
    sum(sal) OVER(ORDER BY EMPNO) "sal_sum",  
    dense_rank() over(order by sal desc) �޿�_denseRank
from employee;

--���¾����� �޿��� 3�鸸������ ����
update employee set sal= 3000000
where empname ='���¾�';




drop table employee;










