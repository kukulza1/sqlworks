CREATE TABLE product(
   product_code   CHAR(6)  PRIMARY KEY, --상품코드
   product_name   VARCHAR2(50) NOT NULL,
   price          NUMBER  NOT NULL
  
);

INSERT INTO PRODUCT (product_code,product_name,price)
values('100001','무소음 무선 마우스',25000);
INSERT INTO PRODUCT (product_code,product_name,price)
values('100002','기계식 게이밍 키보드',30000);
INSERT INTO PRODUCT (product_code,product_name,price)
values('100003','무결점 패널 광시야각 모니터',120000);

select * from product;
commit;

--상품의 총갯수및상품가격의 평균
select count(*), round(avg(price),-2)
from product;

--상품중 마우스를 검색
select*from product
where product_name like '%마우스%';

--상품을 가격순으로 정렬하시오
select * from product
order by price desc;
















