--���ο� �����(user) ����
CREATE USER c##mydb IDENTIFIED BY pwmydb; --c##������
--����(����������)�� ������ ���Ѻο�
GRANT CREATE SESSION TO c##mydb;
-- ���̺� ���ҽ� ������ ���� �ο�
GRANT CREATE TABLE, RESOURCE TO c##mydb;
--DBA�� ����(����)�� ������ �ο�
GRANT CONNECT, DBA TO c##mydb;
