--새로운 사용자(user) 생성
CREATE USER c##project IDENTIFIED BY pwmydb; --c##붙히기
--세션(저장을유지)을 생성할 권한부여
GRANT CREATE SESSION TO c##mydb;
-- 테이블 리소스 생성할 권한 부여
GRANT CREATE TABLE, RESOURCE TO c##mydb;
--DBA에 접속(연결)할 권한을 부여
GRANT CONNECT, DBA TO c##mydb;
