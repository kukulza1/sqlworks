--����Ÿ�� �����Լ�
--���밪 ���ϱ�:ABS()
--���� ���̺�:DUAL
SELECT ABS(-10) FROM DUAL;

--�ݿø�:ROUND(����,�ڸ���)
SELECT ROUND(127.67,1) FROM DUAL;--�Ҽ�ù°�ڸ�
SELECT ROUND(127.67,0) FROM DUAL;--1�� �ڸ�
SELECT ROUND(127.67,-1) FROM DUAL;--10���ڸ�
SELECT ROUND(127.67,-2) FROM DUAL;--100���ڸ�

--����(����):TRUNC(����,�ڸ���)
SELECT TRUNC(127.67,1) FROM DUAL;
SELECT TRUNC(127.67,2) FROM DUAL;
SELECT TRUNC(127.67,0) FROM DUAL;
SELECT TRUNC(127.67,-1) FROM DUAL;
SELECT TRUNC(127.67,-2) FROM DUAL;
--���� FLOOR()--�Ҽ�����������
SELECT FLOOR(124.9)FROM DUAL;

--�ŵ����� POWER
SELECT POWER(2,3) FROM DUAL;--2�Ǽ�����
SELECT POWER(7,5) FROM DUAL;--7�ǿ�����

--����Ÿ��
--�ҹ��ڷ� �����ϱ� rower('A')
SELECT LOWER('ABCDv')FROM DUAL;
--�빮�ڷκ���UPPER('a')
SELECT UPPER('adcD')FROM DUAL; 
--���ڿ��� �Ϻκ��� �����ϴ� �Լ�subStr(���ڿ�,�ε���(1������),�ڸ���)
SELECT SUBSTR('ABCDEF',1,2)FROM DUAL;
SELECT SUBSTR('ABCDEF',2,2)FROM DUAL;
SELECT SUBSTR('ABCDEF',3,5)FROM DUAL;

--���ڿ��� ã�� �ٲٱ�:REPLACE(���ڿ�,����������,�����Ĺ���)
SELECT REPLACE('ABCDEF','C','Z')FROM DUAL;
--���ڿ��Ǳ��� LENGTH
SELECT LENGTH('ABCDEF')FROM DUAL;
--����ŷó��
--LPAD(���ڿ�,��ü����,Ư������)-���ʺ��� Ư�����ڷ�ä��
--RPAD(���ڿ�,��ü����,Ư������)-�����ʺ��� Ư�����ڷ�ä��
SELECT LPAD('TODAY',10,'*')FROM DUAL;
SELECT RPAD('TODAY',10,'*')FROM DUAL;

--�ֹ����̺�
--��������ֹ��ݾ��� �ݿø�
SELECT SUM(SALEPRICE) AS �ֹ������� ,
 COUNT(SALEPRICE) AS �ֹ��Ǽ�,
ROUND(AVG(SALEPRICE),-2) AS �ֹ������ 
FROM ORDERS
GROUP BY CUSID;

--�������̺�
--å�����ǹ���Ʈ��:�ѱ�-3BYTE,  ����.Ư������-1BYTE
SELECT BOOKNAME, LENGTH(BOOKNAME)AS å������ڼ� ,
  LENGTH(BOOKNAME) AS ����Ʈ��
FROM BOOK;
--�౸�� �󱸷� ����
SELECT BOOKNAME, REPLACE(BOOKNAME,'�౸','��')
FROM BOOK;

--�����̺�
SELECT SUBSTR(NAME,1,1) AS ��,
COUNT(*) �ο�
FROM CUSTOMER
GROUP BY SUBSTR(NAME,1,1) ;



