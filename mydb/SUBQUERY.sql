--서브 쿼리(SUB QUERY) 부속질의
--도서중에서 가격이 가장 높은 도서를 검색하시오
SELECT MAX(PRICE) FROM BOOK;

--도서중에서 가장비싼 도서의 이름을검색
SELECT BOOKNAME,PRICE
FROM BOOK
WHERE PRICE = (SELECT MAX(PRICE) FROM BOOK);--서브쿼리 SELECT문내부에SELECT문존재

--도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT CUSID FROM ORDERS;

SELECT NAME
FROM CUSTOMER 
WHERE CUSID IN(SELECT CUSID FROM ORDERS); -- WHERE CUSID IN(1,2,3,4);

--조인방식
--도서를 구매한 적이있는 고객의 이름을 검색
SELECT DISTINCT cus.name
FROM customer cus INNER JOIN orders ord
 ON CUS.CUSID =ord.cusid
 order by cus.name
  

