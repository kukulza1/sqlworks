--user ����: test,��� pwtest
create USER c##test IDENTIFIED BY pwtest;

--session(�α���-����) ���Ѻο�
grant create session to c##test;

--db�� ���̺���� ���� �ο�
grant create table, resource to c##test;

--������ ���� -DML(����,����,��ȸ,����,Ʈ�����)���Ѻο�
grant connect, DBA to c##test;