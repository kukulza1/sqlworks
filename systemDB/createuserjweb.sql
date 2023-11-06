--jweb user계정(db):c##mydb


--c##없이 계정생성
alter session set"_ORACLE_SCRIPT" = TRUE;

--JWEB 계정생성
CREATE USER jweb identified by  pwjweb;

--권한부여,리소스
grant connect,resource,DBA to jweb;
