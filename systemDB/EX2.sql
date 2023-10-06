--테이블 생성
CREATE  TABLE  ex2(
  col_date DATE,  --날짜 자료형(시스템의 현재날짜
  col_timestamp TIMESTAMP   --날짜와 시간자료형
);

INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);
INSERT INTO ex2 (hire_date) VALUES ('2023-09-01');

COMMIT;
SELECT*FROM ex2;

--테이블변경(ALTER)(새로운 칼럼 추가)
ALTER TABLE ex2 ADD hire_date VARCHAR2(20);

DROP TABLE ex2;



