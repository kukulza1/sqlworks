--review
--clob(character large object- �ſ�ū ���ڿ� �ڷ���(4gb)
CREATE TABlE product_review(
    review_no  number primary key,
    memberid   varchar2(20) not null,
    content    clob not null, 
    regdate    Date Default SYSDATE,
    product_code char(6) not null,
    FOREIGN KEY(product_code) REFERENCES product(product_code)
);
--������(�ڵ�����) nocache(�ʱ�ȭ�ϸ� 1���ͽ���)
create sequence seq_rno NOCACHE;
DROP SEQUENCE seq_rno;

INSERT INTO product_review (review_no, product_code, memberid,content)
values(seq_rno.nextval,'100001','today10','�������ε� ������ ��������');
INSERT INTO product_review (review_no, product_code, memberid,content)
values(seq_rno.nextval,'100001','cloud100','�����̶� ���մϴ�!');
INSERT INTO product_review (review_no, product_code, memberid,content)
values(seq_rno.nextval,'100002','sky123','������ �� ���ϴ�.');

select*from product_review;
commit;
delete from product_review
where memberid = 'sky123';

--���̺��������ϰ� �����͸� ��ü����
TRUNCATE TABlE product_review;


--��ǰ�ڵ�'100001'�̰�,ȸ�����̵� cloud100�� ��ǰ�� ���並 ����Ͻÿ�
select *from product_review
where product_code = '100001' and memberid = 'cloud100';

--��ǰ3�� �����ִ»�ǰ2��
--���䰡 �ִ� ��ǰ�� �˻��Ͻÿ�(��������)
-- ������ġ:p���̺��� �⺻Ű = pr���̺��� �ܷ�Ű
select *
from product p, product_review pr
where p.product_code = pr.product_code;
--ǥ�ع�� (�̳�����
select *
from product p join product_review pr
  on p.product_code = pr.product_code;
  
--������ ������������� ��ǰ�� �������˻�(��������)
--product�� ��ǰ�� �����µǰ�,����� �ֵ���� ������� ���䰡 �������null
select *
from product p, product_review pr
where p.product_code = pr.product_code(+);

--ǥ�ع�� (�ܺ����� outer��������
select *
from product p left outer join product_review pr
  on p.product_code = pr.product_code;
  
  select b.product_code,
         b.product_name,
         b.price,
         a.memberid,
         a.content,
         a.regdate        
from product_review a  right join product b
  on a.product_code = b.product_code;




