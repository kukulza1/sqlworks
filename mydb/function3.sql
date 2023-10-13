--조건에 관련 함수-DECODE(칼럼명,조건값,참인값,거짓인값)
--성별이 남성이면 M여성이면F출력
SELECT decode (gender,'남자','M','F') ,ename 
from emp ;
--조건구문(IF~~ELSE와 유사)
/*
CASE
   WHEN 조건1 THEN 결과1
    WHEN 조건2 THEN 결과2
   ELSE 결과3
END칼럼명

*/
SELECT ename 사원번호,
   gender 성별,
CASE
   WHEN gender = '남자' THEN 'M'
   ELSE 'F'
END gender
from emp;
--급여에따른 직급을 표시
--급여가 350만이상이면 과장, 250이상이면 대리 250미만이면 사원
SELECT ename, salary,
CASE
   WHEN salary>=3500000 THEN '과장'
    WHEN salary>=2500000 THEN '대리'
   ELSE '사원'
END 직급
from emp;

select count(salary) from emp;

--null에 0을표시 NVL(인수1,인수2):인수1이 null이 아니면 인수1 출력, 인수1이null이면 인수2출력
--NVL함수로 NULL을 0으로 처리한 후엔 카운트 할수 있음,
select ename, NVL(salary,0)from emp;

select  count(NVL(salary,0))  from emp;

--실습테이블
CREATE TABLE K1(
   ID VARCHAR2(3),
   CNT NUMBER(2)
);
INSERT INTO K1 VALUES('가',5);
INSERT INTO K1 VALUES('나',NULL);
INSERT INTO K1 VALUES('다',5);
INSERT INTO K1 VALUES('라',NULL);
INSERT INTO K1 VALUES('마',10);

SELECT*FROM K1;

COMMIT;


WHERE ID= '가';
SELECT NVL(CNT,0) FROM K1;
SELECT COUNT(CNT) FROM K1;
SELECT COUNT(NVL(CNT,0)) FROM K1;


SELECT AVG(NVL(CNT,0))FROM K1; --20/5 NULL이 0이되어서 카운트되기때문에 분모가 5
SELECT AVG(CNT) FROM K1;      --20/3 두개가 NULL이기때문에 3으로나눠짐

--최소값 구하기
SELECT MIN(NVL(CNT,5))FROM K1;








