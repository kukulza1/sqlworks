CREATE TABLE member (
   id               VARCHAR2(20)  PRIMARY KEY,
   passwd           VARCHAR2(25)   NOT NULL,
   name             VARCHAR2(30),
   email            VARCHAR2(30),
   phone            VARCHAR2(20)  NOT NULL,
   joindate         TIMESTAMP     DEFAULT SYSTIMESTAMP,
   zip_code         VARCHAR2(10),
   address          VARCHAR2(40),
   detailaddress    VARCHAR2(40)
);

CREATE TABLE purchasedetail (
   receipt      VARCHAR2(50)    PRIMARY KEY,
   product      VARCHAR2(40),
   orderdate    TIMESTAMP       DEFAULT SYSTIMESTAMP,
   price        NUMBER(25),
   id           VARCHAR2(20)    NOT NULL,
   orderno      NUMBER          NOT NULL,
   FOREIGN KEY(id) REFERENCES member,
   FOREIGN KEY(orderno) REFERENCES orders
);

CREATE TABLE product (
   pno          NUMBER          PRIMARY KEY,
   pname        VARCHAR2(40)    NOT NULL,
   price        NUMBER          NOT NULL,
   p_score      NUMBER,
   sal_num      NUMBER,
   pcontent     VARCHAR2(200)
);

CREATE TABLE qa (
   qno      NUMBER          PRIMARY KEY,
   qtitle   VARCHAR2(50)    NOT NULL,
   qname    VARCHAR2(20)    NOT NULL,
   qdate    TIMESTAMP,
   qhit     NUMBER,
   aid      VARCHAR2(30)    NOT NULL,
   id       VARCHAR2(30)    NOT NULL,
   FOREIGN KEY(id) REFERENCES member,
   FOREIGN KEY(aid) REFERENCES admin
);

CREATE TABLE review (
   rno       NUMBER             PRIMARY KEY,
   rtype     VARCHAR2(20)       NOT NULL,
   rtitle    VARCHAR2(50)       NOT NULL,
   rdate     TIMESTAMP,
   rcontent  VARCHAR2(200),
   rrate     NUMBER,
   likes      NUMBER,
   receipt   VARCHAR2(50)       NOT NULL,
   FOREIGN KEY(receipt) REFERENCES purchasedetail
);

CREATE TABLE orders (
   orderno          NUMBER          PRIMARY KEY,
   orderdate        TIMESTAMP       DEFAULT SYSTIMESTAMP,
   orderprice       NUMBER,          
   totalprice       NUMBER,         
   cardcompany      VARCHAR2(30),   
   count            NUMBER,         
   orderstatus      VARCHAR2(60),    
   pno              NUMBER          NOT NULL,
   id               VARCHAR2(20)    NOT NULL,
   pname
   FOREIGN KEY(id)  REFERENCES member,
   FOREIGN KEY(pno) REFERENCES product
);

create sequence ono nocache;

CREATE TABLE notice (
   nno       NUMBER          PRIMARY KEY,
   ntitle    VARCHAR2(50)    NOT NULL,
   ncontent  varchar2(600)   ,
   nname     VARCHAR2(20)    NOT NULL,
   ndate     TIMESTAMP       ,
   nhit      NUMBER,
   filename  varchar2(50)
   
);
create sequence seq_nno nocache;
drop table notice;
drop sequence seq_nno;
insert into notice (nno, ntitle, ncontent, nname)
values(seq_nno.nextVal,'����','����','�׽���');

CREATE TABLE category (
    cnum          NUMBER        PRIMARY KEY,
    categoryname  VARCHAR2(20)  NOT NULL,
    cnum2         NUMBER        NOT NULL,
    pno           NUMBER        NOT NULL,
    FOREIGN KEY(pno) REFERENCES product,
    FOREIGN KEY(cnum2) REFERENCES category
);

CREATE TABLE coupon (
    cno         NUMBER                  PRIMARY KEY,
    cid         VARCHAR2(40)            NOT NULL,
    validity    DATE DEFAULT SYSDATE,
    id         	VARCHAR2(20)            NOT NULL,
    FOREIGN KEY(id) REFERENCES member
);

CREATE TABLE delivery (
   dno              NUMBER            PRIMARY KEY,
   name             VARCHAR2(30)      NOT NULL,
   zip_code         VARCHAR2(40),
   address          VARCHAR2(40)      NOT NULL,
   detailaddress    VARCHAR2(40)      NOT NULL,
   request          VARCHAR2(200),
   orderno          NUMBER            NOT NULL,
   FOREIGN KEY(orderno) REFERENCES orders
);

CREATE TABLE admin (
   aid       VARCHAR2(30)      PRIMARY KEY,
   apasswd   VARCHAR2(30)      NOT NULL
);
drop table admin;
CREATE TABLE board (
   bno          NUMBER          PRIMARY KEY,
   btitle       VARCHAR2(60)    NOT NULL,
   bcontent     VARCHAR2(600),
   createdate   TIMESTAMP       DEFAULT SYSTIMESTAMP,
   bupdate      TIMESTAMP       DEFAULT SYSTIMESTAMP,
   id           VARCHAR2(20)    NOT NULL,
   aid          VARCHAR2(30)    NOT NULL,
   FOREIGN KEY(id) REFERENCES member,
   FOREIGN KEY(aid) REFERENCES admin
);

commit;