--주문테이블
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    cusid   number NOT NULL,
    bookid  NUMBER NOT NULL,
    saleprice NUMBER NOT NULL,
    orderdate VARCHAR2(20) NOT NULL,
    FOREIGN KEY(cusid) REFERENCES customer(cusid), 
    FOREIGN KEY(bookid) REFERENCES book(bookid)
);
--데이터추가
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(1,1,1,6000,'2018-07-01');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(2,1,3,21000,'2018-07-03');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(3,2,5,8000,'2018-07-03');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(4,3,6,6000,'2018-07-04');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(5,4,7,20000,'2018-07-05');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(6,1,2,12000,'2018-07-07');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(7,4,8,13000,'2018-07-07');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(8,3,10,12000,'2018-07-08');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(9,2,10,7000,'2018-07-09');
INSERT INTO orders (orderid,cusid,bookid,saleprice,orderdate)
values(10,3,8,13000,'2018-07-10');

