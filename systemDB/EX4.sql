--
CREATE TABLE ex4(
   id VARCHAR2(10) PRIMARY KEY,--�⺻Ű ��������
   passwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003','u1234');
INSERT INTO ex4 VALUES ('sky2003','u1234');--���Ἲ �������� ����
INSERT INTO ex4 VALUES ('today123','u2345',25);

COMMIT;

--����Į���߰�
ALTER TABLE ex4 ADD age NUMBER(3);


SELECT*FROM ex4;

