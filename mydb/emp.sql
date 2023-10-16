--emp
CREATE Table emp(
  empno   number(3) primary key, --�����ȣ
  ename   varchar2(20) not null,--����̸�
  gender  varchar2(6) not null, --����
  salary  number(10),           --�޿�
  hire_date varchar2(20) not null --�Ի���
  );
  
insert into emp values(100,'�̰�','����',3000000,'2019-01-01');
insert into emp values(101,'���','����',2500000,'2020-05-15');
insert into emp values(102,'�����','����',5000000,'2015-02-22');
insert into emp values(103,'�ڽ���','����',null,'2023-10-01');

commit;

select *from emp;

--�ǽ����� Ǯ��
--1.����� �Ի��ϼ����� �����Ͻÿ�
select *from emp
order by hire_date;

2.����� �޿������� �����Ͻÿ�
select *from emp
order by salary;

--3.rmqdurk 300���������λ���� �޿��� ���������� �����Ͻÿ�
select *from emp
where salary <3000001
order by salary desc;

--4.�޿������� ����� �˻��Ͻÿ�
select *from emp
where salary is null;
--5.����� �� ���� ���Ͻÿ�
select count(ename) from emp;

--6.����� �޿� �հ�� ����� ���Ͻÿ�
select sum(salary)����,
 avg(salary)���
 from emp;
 --7.�̸��� ����� ����� ������ ���ڷ� �����Ͻÿ�
update emp set gender = '����'
where ename ='���';
 --8.�̸��� ������λ���� �����Ͻÿ�
 delete from emp
 where ename ='�����';
 
 commit;
 
 --�ݿø�:round(����,�ڸ���)
select ename,salary �޿�,
round(salary/30,-2) �ϴ�,
round(salary/30,0) �ϴ�,
round(salary/30,1) �ϴ�
from emp;
 
SELECT *FROM EMP;
--�޿��� ���帹�� ����� �˻��Ͻÿ�
--��������,��ø����(��������,��������)
SELECT *FROM EMP
WHERE SALARY = (SELECT MAX(SALARY)FROM EMP) ;
--�޿��� ���帹�� ����� ������������� �˻��Ͻÿ�
SELECT ENAME FROM EMP
WHERE SALARY = (SELECT MAX(SALARY)FROM EMP) 
OR SALARY = (SELECT MIN(SALARY)FROM EMP);



















