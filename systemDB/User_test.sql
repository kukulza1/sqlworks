--user 계정: test,비번 pwtest
create USER c##test IDENTIFIED BY pwtest;

--session(로그인-인증) 권한부여
grant create session to c##test;

--db의 테이블생성 권한 부여
grant create table, resource to c##test;

--테이터 조작 -DML(삽입,수정,조회,삭제,트랜잭션)권한부여
grant connect, DBA to c##test;