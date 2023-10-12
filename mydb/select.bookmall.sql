SELECT*FROM ORDERS;
--주문테이블의 칼럼,자료형 구조
desc orders;
--통계함수- 개수(COUNT), 합계SUM, 평균AVG, 최대값MAX, 최소값MIN
--count(*):'*'-칼럼명
--count(칼럼명):
SELECT COUNT(orderid) as 총판매건수
FROM orders;

SELECT COUNT(*) AS 총고객수, COUNT(PHONE) AS 전화번호수
FROM customer;

SELECT SUM(saleprice) AS 총판매액,
  AVG(saleprice) as 총평균
from orders;


--고객별로 주문한 도서수량과 도서의 총판매액을계산
--도서수량이 3권이상인 자료검색
--그룹으로 묶을때 사용 -group by 칼럼명
--having절 사용 -group by절에서 조건이 있을때 사용
SELECT cusid, count(*)as 도서수량, SUM(saleprice) AS 총판매액
from orders
GROUP BY cusid;
--having count(*)>=3;
--and sum(saleprice)>34999;



SELECT  MAX(PRICE)AS 최고가,MIN(PRICE) 최저가 FROM BOOK;

--3번고객(안산)이 주문한 도서의 총 판매액 구하기
SELECT sum(saleprice) as 총판매액
FROM orders
where cusid = 3;

--조인(join)
--동등조인(EQUI JOIN):equal(=)을 사용하는 조인
--테이블명A.칼럼명=테이블B.칼럼명//칼럼-외래키 참조
--고객의 이름과 고객이 주문한 도서의 판매가격을 검색하시오
SELECT customer.name,orders.saleprice
from orders, customer
where orders.cusid = customer.cusid;

--3번고객의 아이디,도서이름,주문가격
select customer.cusid,orders.saleprice,book.bookname
from orders,customer,book
where orders.cusid=customer.cusid
  and orders.bookid = book.bookid
  and customer.name = '안산';
  
select cusid,bookname,saleprice
  FROM orders,book
  WHERE orders.bookid = book.bookid
  AND ORDERS.CUSID =3;
  
--별칭사용조인
select cus.name,ord.saleprice
from customer cus,orders ord --별칭 생성
where cus.cusid=ord.cusid
order by cus.name,ord.saleprice desc;--고객이름별 오름차순정렬,가격별 내림차순정렬


