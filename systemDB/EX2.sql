--���̺� ����
CREATE  TABLE  ex2(
  col_date DATE,  --��¥ �ڷ���(�ý����� ���糯¥
  col_timestamp TIMESTAMP   --��¥�� �ð��ڷ���
);

INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);
INSERT INTO ex2 (hire_date) VALUES ('2023-09-01');

COMMIT;
SELECT*FROM ex2;

--���̺���(ALTER)(���ο� Į�� �߰�)
ALTER TABLE ex2 ADD hire_date VARCHAR2(20);

DROP TABLE ex2;



