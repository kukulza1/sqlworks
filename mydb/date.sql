--날짜시간함수
--현재날짜출력
SELECT SYSDATE FROM DUAL;

--현재날짜형식변환
SELECT  TO_CHAR(SYSDATE,'yyyy') as 년도,
TO_CHAR(SYSDATE,'mm') as 월,
TO_CHAR(SYSDATE,'dd') as 일,
TO_CHAR(SYSDATE,'yyyy-mm-dd') as 날짜
from dual;
--현재날짜와시간
SELECT SYSTIMESTAMP FROM DUAL;
--시간형식변환
select to_char(sysdate,'hh:mi:ss')시간형식,
       to_char(sysdate,'yyyy/mm/dd HH:mi:ss')날짜와시간
from dual;

--현재날짜기준 10일전의 날짜 출력
SELECT SYSDATE -10 FROM DUAL;
SELECT SYSDATE +10 FROM DUAL;

--특정날짜에서 10일 전,후 출력
SELECT TO_DATE('2023-09-01') +10 FROM DUAL;

--월을더하고빼기
--ADD_MONTHS()
SELECT ADD_MONTHS(SYSDATE,3) 결과 FROM DUAL; 
SELECT ADD_MONTHS(SYSDATE,-3) 결과 FROM DUAL; 
SELECT ADD_MONTHS(TO_DATE('2023-05-01'),3) 결과 FROM DUAL; 

--개월수 계산하기
--MONTH_BETWEEN(종료일,시작일)
--총개월수 반올림-ROUND()사용
SELECT ROUND(MONTHS_BETWEEN(SYSDATE,TO_DATE('2022-04-07')),1) FROM DUAL;

--ORDERS테이블에서 날짜시간함수사용
--서점은 주문일로부터 10일후 매출을 확정한다.
--각주문의 확정일자를 구하시오
SELECT ORDERID 주문아이디,ORDERDATE AS 주문일,
TO_DATE(ORDERDATE)+10 AS 주문확정일 FROM ORDERS;

--주문일에 3개월을 더하고 빼기
--주문번호가 6번에서10번까지 출력
SELECT ORDERID 주문아이디,ORDERDATE AS 주문일,
ADD_MONTHS(ORDERDATE,3) AS 주문확정일 FROM ORDERS
--WHERE ORDERID >5;
WHERE ORDERID BETWEEN 6 AND 10;

--주문번호가10인 도서의 주문일로부터 현재까지의 총개월수를 구하시오
SELECT orderid as 주문번호, orderdate 주문일, 
TRUNC(MONTHS_BETWEEN(SYSDATE,ORDERDATE),0) as 지난시간
FROM ORDERS
WHERE ORDERID= 10;

--변환함수 to_number()
SELECT TO_NUMBER('320') FROM DUAL;

























