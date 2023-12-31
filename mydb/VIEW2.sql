--job infO
--SALARY 는 달러기준
CREATE TABLE JOB_INFO(
    JOBID VARCHAR(10),
    MIN_SALARY NUMBER,
    MAXSALARY NUMBER
);

INSERT INTO JOB_INFO VALUES('AD_PRES',20000,40000);
INSERT INTO JOB_INFO VALUES('AD_VP',15000,30000);
INSERT INTO JOB_INFO VALUES('AD_ASS',3000,6000);
INSERT INTO JOB_INFO VALUES('FI_MGR',8000,16000);
INSERT INTO JOB_INFO VALUES('FI_ACCOUNT',4000,9000);
INSERT INTO JOB_INFO VALUES('AC_MGR',8000,16000);
INSERT INTO JOB_INFO VALUES('AC_ACCOUNT',4000,9000);

COMMIT;

SELECT*FROM JOB_INFO;

SELECT ROUND(AVG(MIN_SALARY),2), AVG(MAXSALARY)
FROM JOB_INFO;

--최저급여가 5000달러이상인 직업아이디를 검색하시오
--실행순서 1.FROM 2.WHERE 3.SELECT 4.ORDER  
SELECT JOBID, MIN_SALARY M 
FROM JOB_INFO
WHERE MIN_SALARY >4999;  --M>4999; <- 위의 실행순서때문에 별칭으로 불가

CREATE VIEW V_JOBINFO AS 
SELECT*FROM JOB_INFO 
WHERE MIN_SALARY >4999;

SELECT *FROM V_JOBINFO;
--최고 급여와 최저 급여의 차가 10000달러 이상인 직업아이디 수를 구하시오
SELECT JOBID  FROM V_JOBINFO
WHERE (MAXSALARY - MIN_SALARY) >9999;

SELECT COUNT(*)  FROM V_JOBINFO
WHERE (MAXSALARY - MIN_SALARY) >9999;

SELECT * FROM V_JOBINFO
WHERE JOBID LIKE 'FI%';

DROP VIEW V_JOBINFO;

--MAXSALARY가 최고인 직업아이디를 검색하시오
SELECT JOBID FROM V_JOBINFO
WHERE MAX(MAXSALARY)   



















