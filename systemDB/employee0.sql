--사원테이블 생성
CREATE Table employee0(
  empid NUMBER(3), 
  empname VARCHAR2(20) NOT NULL,
  age NUMBER(3),
  deptid NUMBER,

 PRIMARY KEY(empid),--기본키
 FOREIGN KEY(deptid) REFERENCES department(deptid)--외래키
);

--사원자료 추가
INSERT INTO employee0(empid,empname,age,deptid) 
VALUES(101,'SB',24,10);
INSERT INTO employee0(empid,empname,age,deptid) 
VALUES(102,'KSB',22,30); --부서코드가 없어서 외래키 제약조건위배,삽입 이상
INSERT INTO employee0(empid,empname,deptid) 
VALUES(103,'GSB',20);
INSERT INTO employee0(empid, empname,age,deptid) 
VALUES(104,'HH',22,20);


--모든사원정보출력
SELECT*FROM employee0;

--사원이름과 나이만출력
SELECT empname,age FROM employee0;

--SB사원만 출력
SELECT*FROM employee0
WHERE empname ='SB';

--나이가 23이상인 사원검색
SELECT*FROM employee0
WHERE age>23;
--부서번호가 20인사원검색
SELECT*FROM employee0
WHERE deptid = 20;
--나이정보가 없는사원검색
SELECT*FROM employee0
WHERE age IS NULL;

--문자열검색 (사원이름에서 'S'을포함하고 나이가 저장되지 않은 사원검색) LIKE '%문자%';
--'%B'; 
SELECT*FROM employee0
WHERE empname LIKE '%B' AND age IS NULL;

SELECT*FROM employee0
WHERE empname LIKE '%B' OR age IS NULL;


COMMIT;
DROP TABLE employee0;