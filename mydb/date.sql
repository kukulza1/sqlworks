--��¥�ð��Լ�
--���糯¥���
SELECT SYSDATE FROM DUAL;

--���糯¥���ĺ�ȯ
SELECT  TO_CHAR(SYSDATE,'yyyy') as �⵵,
TO_CHAR(SYSDATE,'mm') as ��,
TO_CHAR(SYSDATE,'dd') as ��,
TO_CHAR(SYSDATE,'yyyy-mm-dd') as ��¥
from dual;
--���糯¥�ͽð�
SELECT SYSTIMESTAMP FROM DUAL;
--�ð����ĺ�ȯ
select to_char(sysdate,'hh:mi:ss')�ð�����,
       to_char(sysdate,'yyyy/mm/dd HH:mi:ss')��¥�ͽð�
from dual;

--���糯¥���� 10������ ��¥ ���
SELECT SYSDATE -10 FROM DUAL;
SELECT SYSDATE +10 FROM DUAL;

--Ư����¥���� 10�� ��,�� ���
SELECT TO_DATE('2023-09-01') +10 FROM DUAL;

--�������ϰ���
--ADD_MONTHS()
SELECT ADD_MONTHS(SYSDATE,3) ��� FROM DUAL; 
SELECT ADD_MONTHS(SYSDATE,-3) ��� FROM DUAL; 
SELECT ADD_MONTHS(TO_DATE('2023-05-01'),3) ��� FROM DUAL; 

--������ ����ϱ�
--MONTH_BETWEEN(������,������)
--�Ѱ����� �ݿø�-ROUND()���
SELECT ROUND(MONTHS_BETWEEN(SYSDATE,TO_DATE('2022-04-07')),1) FROM DUAL;

--ORDERS���̺��� ��¥�ð��Լ����
--������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�.
--���ֹ��� Ȯ�����ڸ� ���Ͻÿ�
SELECT ORDERID �ֹ����̵�,ORDERDATE AS �ֹ���,
TO_DATE(ORDERDATE)+10 AS �ֹ�Ȯ���� FROM ORDERS;

--�ֹ��Ͽ� 3������ ���ϰ� ����
--�ֹ���ȣ�� 6������10������ ���
SELECT ORDERID �ֹ����̵�,ORDERDATE AS �ֹ���,
ADD_MONTHS(ORDERDATE,3) AS �ֹ�Ȯ���� FROM ORDERS
--WHERE ORDERID >5;
WHERE ORDERID BETWEEN 6 AND 10;

--�ֹ���ȣ��10�� ������ �ֹ��Ϸκ��� ��������� �Ѱ������� ���Ͻÿ�
SELECT orderid as �ֹ���ȣ, orderdate �ֹ���, 
TRUNC(MONTHS_BETWEEN(SYSDATE,ORDERDATE),0) as �����ð�
FROM ORDERS
WHERE ORDERID= 10;

--��ȯ�Լ� to_number()
SELECT TO_NUMBER('320') FROM DUAL;

























