--���ǿ� ���� �Լ�-DECODE(Į����,���ǰ�,���ΰ�,�����ΰ�)
--������ �����̸� M�����̸�F���
SELECT decode (gender,'����','M','F') ,ename 
from emp ;
--���Ǳ���(IF~~ELSE�� ����)
/*
CASE
   WHEN ����1 THEN ���1
    WHEN ����2 THEN ���2
   ELSE ���3
ENDĮ����

*/
SELECT ename �����ȣ,
   gender ����,
CASE
   WHEN gender = '����' THEN 'M'
   ELSE 'F'
END gender
from emp;
--�޿������� ������ ǥ��
--�޿��� 350���̻��̸� ����, 250�̻��̸� �븮 250�̸��̸� ���
SELECT ename, salary,
CASE
   WHEN salary>=3500000 THEN '����'
    WHEN salary>=2500000 THEN '�븮'
   ELSE '���'
END ����
from emp;

select count(salary) from emp;

--null�� 0��ǥ�� NVL(�μ�1,�μ�2):�μ�1�� null�� �ƴϸ� �μ�1 ���, �μ�1��null�̸� �μ�2���
--NVL�Լ��� NULL�� 0���� ó���� �Ŀ� ī��Ʈ �Ҽ� ����,
select ename, NVL(salary,0)from emp;

select  count(NVL(salary,0))  from emp;

--�ǽ����̺�
CREATE TABLE K1(
   ID VARCHAR2(3),
   CNT NUMBER(2)
);
INSERT INTO K1 VALUES('��',5);
INSERT INTO K1 VALUES('��',NULL);
INSERT INTO K1 VALUES('��',5);
INSERT INTO K1 VALUES('��',NULL);
INSERT INTO K1 VALUES('��',10);

SELECT*FROM K1;

COMMIT;


WHERE ID= '��';
SELECT NVL(CNT,0) FROM K1;
SELECT COUNT(CNT) FROM K1;
SELECT COUNT(NVL(CNT,0)) FROM K1;


SELECT AVG(NVL(CNT,0))FROM K1; --20/5 NULL�� 0�̵Ǿ ī��Ʈ�Ǳ⶧���� �и� 5
SELECT AVG(CNT) FROM K1;      --20/3 �ΰ��� NULL�̱⶧���� 3���γ�����

--�ּҰ� ���ϱ�
SELECT MIN(NVL(CNT,5))FROM K1;








