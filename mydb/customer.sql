--�� ���̺� ����
CREATE TABLE customer(
   cusid    NUMBER PRIMARY KEY,
   name     VARCHAR2(40)NOT NULL,
   address  VARCHAR2(50),
   phone    VARCHAR2(20)
);
INSERT INTO customer(cusid,name,address,phone)
values (1,'������','������ü����','000-5000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (2,'�迬��','���ѹα� ����','000-6000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (3,'�Ȼ�','���ѹα� ���ֱ�����','000-7000-0001');
INSERT INTO customer(cusid,name,address,phone)
values (4,'������','�̱� �����','');
INSERT INTO customer(cusid,name,address,phone)
values (5,'�����','���� ��Ʈ��','000-8000-0001');

commit;