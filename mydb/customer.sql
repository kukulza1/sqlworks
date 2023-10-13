--고객 테이블 생성
CREATE TABLE customer(
   cusid    NUMBER PRIMARY KEY,
   name     VARCHAR2(40)NOT NULL,
   address  VARCHAR2(50),
   phone    VARCHAR2(20)
);
INSERT INTO customer(cusid,name,address,phone)
values (1,'박지성','영국맨체스터','000-5000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (2,'김연아','대한민국 서울','000-6000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (3,'안산','대한민국 광주광역시','000-7000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (4,'류현진','미국 토론토','');
INSERT INTO customer(cusid,name,address,phone)
values (5,'손흥민','영국 토트넘','000-8000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (6,'성우영','인천','031-8000-0001');

commit;