--부서및 사원테이블 생성
Create TABLE department(
   deptid NUMBER PRIMARY key,       --기본키
   deptname VARCHAR2(20) NOT NULL, --NULL허용안함
   location VARCHAR2(20) NOT NULL
);

--부서자료추가--
insert INTO department(deptid,deptname,location)
VALUES (10,'전산팀','서울');
insert INTO department(deptid,deptname,location)
VALUES (20,'관리팀','인천');

insert INTO department(deptid,deptname,location)
VALUES (30,'마케팅팀','성남');

--자료검색(특정칼럼검색)
SELECT deptid, deptname FROM department;
--모든 칼럼검색 '*'사용
SELECT*FROM department;
--특정한 데이터(행:로우)검색->(where조건절사용) EX부서명이 전산팀인 row(레코드)만검색
SELECT*FROM department 
WHERE deptname = '전산팀';

--자료수정(부서아이디가 20번인 로우의 부서명을 변경 관리팀-> 경영팀으로 변경)
UpDATE department SET deptname = '경영팀'
WHERE deptid = 20;

--자료삭제 (마케팅팀삭제)
DELETE FROM department
WHERE deptid = 30;

--삭제이상 (상속받은테이블이 참조하고있으므로 삭제불가)
DELETE FROM department
WHERE deptid = 10;

ROLLBACK; --COMMIT이전에만 롤백(취소)가능 커밋후엔 롤백불가

commit;

