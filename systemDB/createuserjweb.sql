--jweb user����(db):c##mydb


--c##���� ��������
alter session set"_ORACLE_SCRIPT" = TRUE;

--JWEB ��������
CREATE USER jweb identified by  pwjweb;

--���Ѻο�,���ҽ�
grant connect,resource,DBA to jweb;
