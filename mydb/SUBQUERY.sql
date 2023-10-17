--서브 쿼리(SUB QUERY) 부속질의
--도서중에서 가격이 가장 높은 도서를 검색하시오
SELECT MAX(PRICE) FROM BOOK;

--도서중에서 가장비싼 도서의 이름을검색
SELECT BOOKNAME,PRICE
FROM BOOK
WHERE PRICE =(SELECT MAX(PRICE) FROM BOOK);--서브쿼리 SELECT문내부에SELECT문존재

--도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT CUSID FROM ORDERS;

--다중행 서브쿼리
--도서를구매한적이 없는 고객의 이름출력
SELECT NAME
FROM CUSTOMER 
WHERE CUSID not in (SELECT CUSID FROM ORDERS);-- =(SELECT CUSID FROM ORDERS)x 
--도서를구매한적이 있는 고객의 이름출력
SELECT NAME
FROM CUSTOMER 
WHERE CUSID not in (SELECT CUSID FROM ORDERS);

--from절에 있는 서브쿼리-인라인뷰
--고객번호가 2이하인 고객의 이름과 고객의 판매액 검색
select a.name, sum(b.saleprice) total from customer a , orders b 
   where a.cusid = b.cusid and a.cusid<3
   group by a.name
   Having  sum(b.saleprice)>=30000;
   
   
--스칼라 서브쿼리:select 절에 있는 select문을 말함
--상품리뷰 테이블에 있는 상품이름 검색
select a.name, sum(b.saleprice) 
from (select *from customer where customer.cusid<3) a ,orders b 
where a.cusid = b.cusid group by a.name;
   
select*from product;
select*from product_review;

--상품리뷰테이블에 없는 상품이름 검색
select  b.product_code,
        (select a.product_name from product a 
        where b.product_code=a.product_code)productname,
        b.memberid, b.content     
from  product_review b;

--조인방식
--도서를 구매한 적이있는 고객의 이름을 검색
SELECT DISTINCT cus.name
FROM customer cus INNER JOIN orders ord
 ON CUS.CUSID =ord.cusid
 order by cus.name
 
 --실행순서 1.from절 테이블명 2.where절,group by 3.select절 4.order절 

