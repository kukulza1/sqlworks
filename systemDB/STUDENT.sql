--학생 테이블생성
CREATE TABLE student(
     snumber NUMBER PRIMARY KEY,
     sname   VARCHAR2(20) not null,  
     age     NUMBER(2) not null,
     gender  VARCHAR(6) not null,
     address VARCHAR2(50),
     mname VARCHAR2(30)not null, 
     FOREIGN KEY(mname) references major--외래키
);
--학생추가
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(111,'SB',22,'남','서울시','소프트웨어학과');
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(112,'KSB',23,'여','제주시','화학공학과');
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(113,'GSB',24,'남','','전기전자공학과');
INSERT INTO student (snumber,sname,age,gender,address,mname)
VALUES(111,'SBf',30,'남','서울시1','회계학과');--부모키에 없는 데이터는 삽입이상발생

SELECT*FROM student;

--이름에 'K'가포함된 학생의 모든 정보출력
SELECT*FROM student
WHERE sname like 'K%';

--나이가 30이상,성별이 남성인 학생의 모든정보 출력
SELECT*FROM student
WHERE gender = '남' and age>23;

--주소가 없는학생 정보 출력
SELECT*FROM student
WHERE address is null;

--주소가없는 학생삭제
delete FROM student
where address is null;

-----------------------@@
SELECT*FROM student
WHERE address= ' ';


--SB학생의 이름과 나이만출력 where사용
SELECT sname, age FROM student
WHERE sname = 'SB';

--데이터변경
update student  set address = '영통구'
WHERE address is null;

update student  set mname = '전기전자공학과'
WHERE mname ='화학공학과';

update student  set age =33, sname ='SB'
where age = 22;

--정렬하기 ORDER BY ~~ (오름차순-ASC(생략가능),내림차순-DESC)
--학생의 나이가 적은순으로 정렬하여 출력하시오
SELECT*FROM student
ORDER BY age ASC;
--나이가 많은순
SELECT*FROM student
ORDER BY age DESC;
--학과명이 전기전자공학과 학생중에서 나이가 많은순으로 정렬하여 출력하시오
SELECT*FROM student
WHERE mname='전기전자공학과'
ORDER BY age DESC;



rollback;--트랜잭션(커밋하기전 데이터에 취소(복원)가능,커밋된데이터는 롤백불가)
commit;



drop table student;