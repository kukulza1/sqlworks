--자바프로젝트와 연동할 user테이블 생성
CREATE TABLE users(
   userid   VARCHAR2(20) PRIMARY KEY,
   username VARCHAR2(30) NOT NULL,
   userpw VARCHAR2(20) NOT NULL,
   userage NUMBER(3) NOT NULL,
   useremail VARCHAR2(50) NOT NULL
);
--회원추가
INSERT INTO USERS VALUES('TODAY','고오늘','12345',25,'today@korea.kr');

select*from users where userid = 'TODAY';
select*from users;
commit;
drop table users;