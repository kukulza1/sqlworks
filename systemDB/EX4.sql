--
CREATE TABLE ex4(
   id VARCHAR2(10) PRIMARY KEY,--기본키 제약조건
   passwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003','u1234');
INSERT INTO ex4 VALUES ('sky2003','u1234');--무결성 제약조건 위배
INSERT INTO ex4 VALUES ('today123','u2345',25);
INSERT INTO ex4 (id,passwd,age) VALUES ('today321','u3456','22');
INSERT INTO ex4 (id,passwd,age) VALUES ('today3201','u3456223445','22');--자료형의크기보다 큰데이터 입력불가

COMMIT;

--나이칼럼추가
ALTER TABLE ex4 ADD age NUMBER(3);

--자료형의 크기변경 (varchar2의 크기를 10->12)
ALTER TABLE ex4 MODIFY passwd VARCHAR2(12);


SELECT*FROM ex4;

