--�μ��� ������̺� ����
Create TABLE department(
   deptid NUMBER PRIMARY key,       --�⺻Ű
   deptname VARCHAR2(20) NOT NULL, --NULL������
   location VARCHAR2(20) NOT NULL
);

--�μ��ڷ��߰�--
insert INTO department(deptid,deptname,location)
VALUES (10,'������','����');
insert INTO department(deptid,deptname,location)
VALUES (20,'������','��õ');

insert INTO department(deptid,deptname,location)
VALUES (30,'��������','����');

--�ڷ�˻�(Ư��Į���˻�)
SELECT deptid, deptname FROM department;
--��� Į���˻� '*'���
SELECT*FROM department;
--Ư���� ������(��:�ο�)�˻�->(where���������) EX�μ����� �������� row(���ڵ�)���˻�
SELECT*FROM department 
WHERE deptname = '������';

--�ڷ����(�μ����̵� 20���� �ο��� �μ����� ���� ������-> �濵������ ����)
UpDATE department SET deptname = '�濵��'
WHERE deptid = 20;

--���� 
DELETE depar

ROLLBACK; --COMMIT�������� �ѹ�(���)���� Ŀ���Ŀ� �ѹ�Ұ�

commit;

