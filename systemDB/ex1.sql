--스키마:system
--테이블
CREATE TABLE exl(
     column1 CHAR(10),     --고정길이 문자(10byte)
     column2 VARCHAR(10)   --가변길이 문자(10byte)
);

--데이터 추가
INSERT INTO exl(column1,column2) values('abc','abc');
INSERT INTO exl values('당산','당산');


--데이터 조회

SELECT column1, LENGTH(column1), column2, LENGTH(column2) FROM exl;

--트랜잭션 : commit , rollback
COMMIT;--INSERT한경우 반드시 해줘야함




DROP TABLE exl;--테이블 삭제

