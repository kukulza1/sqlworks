--��Ű��:system
--���̺�
CREATE TABLE exl(
     column1 CHAR(10),     --�������� ����(10byte)
     column2 VARCHAR(10)   --�������� ����(10byte)
);

--������ �߰�
INSERT INTO exl(column1,column2) values('abc','abc');
INSERT INTO exl values('���','���');


--������ ��ȸ

SELECT column1, LENGTH(column1), column2, LENGTH(column2) FROM exl;

--Ʈ����� : commit , rollback
COMMIT;--INSERT�Ѱ�� �ݵ�� �������




DROP TABLE exl;--���̺� ����

