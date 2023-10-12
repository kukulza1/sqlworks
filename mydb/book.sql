--bookmall구축
create table book(
    bookid NUMBER PRIMARY KEY,
    bookname  VARCHAR2(60) NOT NULL,
    publisher VARCHAR2(60) NOT NULL, 
    price NUMBER NOT NULL 
);
--부서자료 추가
INSERT INTO book VALUES (1,'축구의역사','굿스포츠',7000);
INSERT INTO book VALUES (2,'축구아는 여자','나무수',13000);
INSERT INTO book VALUES (3,'축구의이해','대한미디어',22000);
INSERT INTO book VALUES (4,'골프 바이블','대한미디어',35000);
INSERT INTO book VALUES (5,'피겨교본','굿스포츠',8000);
INSERT INTO book VALUES (6,'양궁의실체','굿스포츠',6000);
INSERT INTO book VALUES (7,'야구의추억','이상미디어',20000);
INSERT INTO book VALUES (8,'야구를부탁해','이상미디어',13000);
INSERT INTO book VALUES (9,'올림픽 이야기','삼성당',7500);
INSERT INTO book VALUES (10,'olympic champion','Person',13000);

SELECT*FROM BOOK;

--모든도서의 이름과 가격만 검색
SELECT bookname,price from book;
--도서테이블에 있는 모든 출판사를 검색하시오(중복제거-DISTINCT)
--DISTINCT는 중복을 없애주는 명령어
SELECT DISTINCT publisher from book;

--출판사가 굿스포츠나 또는 대한미디어인 도서를 검색
--in()함수
SELECT* from book
where publisher ='굿스포츠' or publisher ='대한미디어';
SELECT* from book
where publisher in('굿스포츠','대한미디어');

--출판사가 굿스포츠나 또는 대한미디어인 도서제외하고 검색
SELECT* from book
where publisher not in('굿스포츠','대한미디어');

--가격이 2만원미만인 도서를 검색(오름차순으로 정렬)
SELECT*FROM BOOK
WHERE PRICE<=20000
ORDER BY price;
--가격이13000원인 도서를 검색하시오
SELECT*FROM BOOK
WHERE PRICE=13000;
--13000원이 아닌도서
SELECT*FROM BOOK
WHERE PRICE<>13000; -- <>,!= 



--가격이 만원이상2만원이하인 도서를 검색
-- 칼럼명 BETWEEN A AND B (>=,<=)
SELECT*FROM BOOK
WHERE price BETWEEN 10000 AND 20000; --Price >9999 and pice>20001;

--'축구의역사'를출간한 출판사를 검색
SELECT bookname,publisher from book
where bookname = '축구의역사';
SELECT  bookname,publisher from book
where bookname like '축구의역사';

--도서이름에 '축구'가 포함된 도서제외하기
SELECT bookname,publisher from book
where bookname not like '%축구%';

--도서이름에 '축구'가포함된 출판사를검색
SELECT bookname,publisher from book
where bookname like '%축구%';

--축구에 관한도서중 가격이 2만원이상인 도서를 검색
SELECT*from book
where price>19999 and bookname like '%축구%';

--도서를 이름순으로 오름차순정렬
SELECT*FROM BOOK
ORDER BY bookname;

--도서를 가격순으로 검색하고 같은가격이면 이름을 내림차순으로정렬
SELECT*FROM BOOK
ORDER BY price asc, bookname desc;

COMMIT;

ROLLBACK;

drop table book;