CREATE  TABLE  drink(
    drink_code varchar2(3) primary key,
    drink_name varchar2(30) not null
);

INSERT INTO DRINK values('A01','아메리카노');
INSERT INTO DRINK values('B01','카페라떼');
insert into drink values('C01','자몽차');


create table cafe_order(
    order_no varchar2(10) primary key,
    drink_code varchar2(3) not null,
    order_CNT NUMBER NOT NULL,
     FOREIGN KEY(drink_code) REFERENCES drink(drink_code)
);

INSERT INTO CAFE_ORDER VALUES('2023100101','A01',3);
INSERT INTO CAFE_ORDER VALUES('2023100102','B01',1);
INSERT INTO CAFE_ORDER VALUES('2023100123','A01',2);


SELECT*FROM Drink;
select*from cafe_order;

select b.order_no,a.drink_code,a.drink_name,b.order_cnt
from drink a,cafe_order b
where a.drink_code=b.drink_code;

select b.order_no,a.drink_code,a.drink_name,b.order_cnt
from drink a join cafe_order b
on a.drink_code=b.drink_code;

--주문이 없는 음료를 포함하여 출력
select b.order_no,b.order_cnt,a.drink_code,a.drink_name
from drink a left join cafe_order b
on a.drink_code=b.drink_code;



ROLLBACK;
COMMIT;

drop table cafe_order;



