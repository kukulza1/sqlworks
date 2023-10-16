CREATE TABLE product(
   product_code   CHAR(6)  PRIMARY KEY, --��ǰ�ڵ�
   product_name   VARCHAR2(50) NOT NULL,
   price          NUMBER  NOT NULL
  
);

INSERT INTO PRODUCT (product_code,product_name,price)
values('100001','������ ���� ���콺',25000);
INSERT INTO PRODUCT (product_code,product_name,price)
values('100002','���� ���̹� Ű����',30000);
INSERT INTO PRODUCT (product_code,product_name,price)
values('100003','������ �г� ���þ߰� �����',120000);

select * from product;
commit;

--��ǰ�� �Ѱ����׻�ǰ������ ���
select count(*), round(avg(price),-2)
from product;

--��ǰ�� ���콺�� �˻�
select*from product
where product_name like '%���콺%';

--��ǰ�� ���ݼ����� �����Ͻÿ�
select * from product
order by price desc;
















