--������̺� ����
CREATE Table employee0(
  empid NUMBER(3), 
  empname VARCHAR2(20) NOT NULL,
  age NUMBER(3),
  deptid NUMBER,

 PRIMARY KEY(empid),--�⺻Ű
 FOREIGN KEY(deptid) REFERENCES department(deptid)--�ܷ�Ű
);

--����ڷ� �߰�
INSERT INTO employee0(empid,empname,age,deptid) 
VALUES(101,'SB','24',10);
INSERT INTO employee0(empid,empname,age,deptid) 
VALUES(102,'KSB','23',30); --�μ��ڵ尡 ��� �ܷ�Ű ������������
INSERT INTO employee0(empid,empname,deptid) 
VALUES(103,'GSB',20);
INSERT INTO employee0(empid, empname,age) 
VALUES(104,'HH','22');


--������������
SELECT*FROM employee0;

--����̸��� ���̸����
SELECT empname,age FROM employee0;

--SB����� ���
SELECT*FROM employee0
WHERE empname ='SB';

--���̰� 23�̻��� ����˻�
SELECT*FROM employee0
WHERE age>23;
--�μ���ȣ�� 20�λ���˻�
SELECT*FROM employee0
WHERE deptid = 20;
--���������� ���»���˻�
SELECT*FROM employee0
WHERE age IS NULL;


COMMIT;
DROP TABLE employee0;