Create TABLE dept(
   deptid NUMBER PRIMARY key,       --기본키
   deptname VARCHAR2(20) NOT NULL, --NULL허용안함
   location VARCHAR2(20) NOT NULL
);

--부서자료추가--
insert INTO dept(deptid,deptname,location)
VALUES (10,'전산팀','서울');
insert INTO dept(deptid,deptname,location)
VALUES (20,'관리팀','인천');
insert INTO dept(deptid,deptname,location)
VALUES (30,'마케팅팀','성남');

SELECT*FROM DEPT;
COMMIT;

--부서명에서 팀명만 출력
SELECT  REPLACE(SUBSTR(DEPTNAME,1,2),'마케','마케팅') FROM DEPT;
SELECT SUBSTR(DEPTNAME,1, LENGTH(DEPTNAME)-1)FROM DEPT;
SELECT REPLACE(DEPTNAME,'팀','') FROM DEPT;













