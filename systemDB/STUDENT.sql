--�л� ���̺����
CREATE TABLE student(
     snumber NUMBER PRIMARY KEY,
     sname   VARCHAR2(20) not null,  
     age     NUMBER(2) not null,
     gender  VARCHAR(6) not null,
     address VARCHAR2(50),
     mname VARCHAR2(30)not null, 
     FOREIGN KEY(mname) references major--�ܷ�Ű
);
--�л��߰�
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(111,'SB',22,'��','�����','����Ʈ�����а�');
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(112,'KSB',23,'��','���ֽ�','ȭ�а��а�');
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(113,'GSB',24,'��','','�������ڰ��а�');
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(111,'SBf',30,'��','�����1','ȸ���а�');--�θ�Ű�� ���� �����ʹ� �����̻�߻�

SELECT*FROM student;

--�̸��� 'K'�����Ե� �л��� ��� �������
SELECT*FROM student
WHERE sname like 'K%';

--���̰� 30�̻�,������ ������ �л��� ������� ���
SELECT*FROM student
WHERE gender = '��' and age>23;

--�ּҰ� �����л� ���� ���
SELECT*FROM student
WHERE address is null;

--�ּҰ����� �л�����
delete FROM student
where address is null;

-----------------------@@
SELECT*FROM student
WHERE address= ' ';


--SB�л��� �̸��� ���̸���� where���
SELECT sname, age FROM student
WHERE sname = 'SB';

--�����ͺ���
update student  set address = '���뱸'
WHERE address is null;

update student  set mname = '�������ڰ��а�'
WHERE mname ='ȭ�а��а�';

update student  set age =33, sname ='SB'
where age = 22;

--�����ϱ� ORDER BY ~~ (��������-ASC(��������),��������-DESC)
--�л��� ���̰� ���������� �����Ͽ� ����Ͻÿ�
SELECT*FROM student
ORDER BY age ASC;
--���̰� ������
SELECT*FROM student
ORDER BY age DESC;
--�а����� �������ڰ��а� �л��߿��� ���̰� ���������� �����Ͽ� ����Ͻÿ�
SELECT*FROM student
WHERE mname='�������ڰ��а�'
ORDER BY age DESC;



rollback;--Ʈ�����(Ŀ���ϱ��� �����Ϳ� ���(����)����,Ŀ�Եȵ����ʹ� �ѹ�Ұ�)
commit;



drop table student;