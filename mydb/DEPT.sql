Create TABLE dept(
   deptid NUMBER PRIMARY key,       --�⺻Ű
   deptname VARCHAR2(20) NOT NULL, --NULL������
   location VARCHAR2(20) NOT NULL
);

--�μ��ڷ��߰�--
insert INTO dept(deptid,deptname,location)
VALUES (10,'������','����');
insert INTO dept(deptid,deptname,location)
VALUES (20,'������','��õ');
insert INTO dept(deptid,deptname,location)
VALUES (30,'��������','����');

SELECT*FROM DEPT;
COMMIT;

--�μ����� ���� ���
SELECT  REPLACE(SUBSTR(DEPTNAME,1,2),'����','������') FROM DEPT;
SELECT SUBSTR(DEPTNAME,1, LENGTH(DEPTNAME)-1)FROM DEPT;
SELECT REPLACE(DEPTNAME,'��','') FROM DEPT;













