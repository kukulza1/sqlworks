--숫자타입 내장함수
--절대값 구하기:ABS()
--제공 테이블:DUAL
SELECT ABS(-10) FROM DUAL;

--반올림:ROUND(숫자,자리수)
SELECT ROUND(127.67,1) FROM DUAL;--소수첫째자리
SELECT ROUND(127.67,0) FROM DUAL;--1의 자리
SELECT ROUND(127.67,-1) FROM DUAL;--10의자리
SELECT ROUND(127.67,-2) FROM DUAL;--100의자리

--버림(내림):TRUNC(숫자,자리수)
SELECT TRUNC(127.67,1) FROM DUAL;
SELECT TRUNC(127.67,2) FROM DUAL;
SELECT TRUNC(127.67,0) FROM DUAL;
SELECT TRUNC(127.67,-1) FROM DUAL;
SELECT TRUNC(127.67,-2) FROM DUAL;
--버림 FLOOR()--소수점만버리기
SELECT FLOOR(124.9)FROM DUAL;

--거듭제곱 POWER
SELECT POWER(2,3) FROM DUAL;--2의세제곱
SELECT POWER(7,5) FROM DUAL;--7의오제곱

--문자타입
--소문자로 변경하기 rower('A')
SELECT LOWER('ABCDv')FROM DUAL;
--대문자로변경UPPER('a')
SELECT UPPER('adcD')FROM DUAL; 
--문자열의 일부분을 추출하는 함수subStr(문자열,인덱스(1번시작),자리수)
SELECT SUBSTR('ABCDEF',1,2)FROM DUAL;
SELECT SUBSTR('ABCDEF',2,2)FROM DUAL;
SELECT SUBSTR('ABCDEF',3,5)FROM DUAL;

--문자열을 찾아 바꾸기:REPLACE(문자열,변경전문자,변경후문자)
SELECT REPLACE('ABCDEF','C','Z')FROM DUAL;
--문자열의길이 LENGTH
SELECT LENGTH('ABCDEF')FROM DUAL;
--마스킹처리
--LPAD(문자열,전체길이,특정문자)-왼쪽부터 특정문자로채움
--RPAD(문자열,전체길이,특정문자)-오른쪽부터 특정문자로채움
SELECT LPAD('TODAY',10,'*')FROM DUAL;
SELECT RPAD('TODAY',10,'*')FROM DUAL;

--주문테이블
--고객별평균주문금액을 반올림
SELECT SUM(SALEPRICE) AS 주문액총합 ,
 COUNT(SALEPRICE) AS 주문건수,
ROUND(AVG(SALEPRICE),-2) AS 주문액평균 
FROM ORDERS
GROUP BY CUSID;

--도서테이블
--책제목의바이트수:한글-3BYTE,  영어.특수문자-1BYTE
SELECT BOOKNAME, LENGTH(BOOKNAME)AS 책제목글자수 ,
  LENGTH(BOOKNAME) AS 바이트수
FROM BOOK;
--축구를 농구로 변경
SELECT BOOKNAME, REPLACE(BOOKNAME,'축구','농구')
FROM BOOK;

--고객테이블
SELECT SUBSTR(NAME,1,1) AS 성,
COUNT(*) 인원
FROM CUSTOMER
GROUP BY SUBSTR(NAME,1,1) ;



