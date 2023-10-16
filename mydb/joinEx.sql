--조인 : 두 테이블을 서로 연결하여 사용하는기능
--동등조인(equi join):조인조건이 정확히 일치하는 경우에 결과 출력
--외부조인(out join):조인조건이 일치하지 않아도 모든 결과를 출력
--자체조인:

--고객(customer)과 고객의주문(orders)에 관한 데이터를 모두 검색하시오 (동등조인)
--고객이름으로 정렬(자동으로 그룹화 됨)
SELECT cus.name,ord.saleprice FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid
ORDER BY CUS.name;

--주문하지않은 데이터도 모두 검색 (외부조인)
--조건이 일치하지않은 테이블에 +를넣어줌
SELECT cus.name,ord.saleprice FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid(+)
ORDER BY CUS.name;


--고객의 이름과 주문한 도서이름 주문일,주문금액
SELECT cus.name,bk.bookname,ord.orderdate,ord.saleprice
FROM customer cus,book bk,orders ord
where cus.cusid = ord.cusid --기본키=외래키
and bk.bookid = ord.bookid;

--고객과 고객의 주문에관한데이터를 모두 검색하시오
--조건:박지성 고객의 주문내열을 검색하시오
--주문금액의 총액을 출력
SELECT cus.name,ord.saleprice 
FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid and cus.name ='박지성'
ORDER BY CUS.name;

--고객별 주문 금액의 총액을 출력
--그룹별 총금액을 출력 group by
--김연아 고객의 주문 총금액을 출력(having으로 제한을 둠)
SELECT cus.cusid, cus.name, sum(ord.saleprice) 
FROM CUSTOMER cus,orders ord
WHERE cus.cusid = ord.cusid 
group BY cus.cusid, cus.name
--having cus.name ='김연아'
ORDER BY CUS.name;

--표준조인(ANSI SQL)
--내부조인(INNER JOIN)
--고객customer과 고객의주문orders에 관한 데이터중고객의 이름과 고객이주문한 도서의 판매가격을 검색하시오
SELECT cus.name,ord.saleprice
FROM customer cus INNER JOIN orders ord --inner생략가능
 ON CUS.CUSID =ord.cusid
 order by cus.name;
 
 --외부 조인(outer join) join조건에 충족하는 데이터가 아니어도 출력하는기법
 --customer와orders에관한 데이터중 주문되지 않은 데이터를 포함하여 고객의 이름과 고객이 주문한
 --도서의 판매가격을검색하시오
 SELECT CUS.NAME,ORD.SALEPRICE
 FROM CUSTOMER CUS LEFT OUTER JOIN ORDERS ORD
 ON CUS.CUSID=ORD.CUSID;



