--���ο���
--product,product_review
select *from product;
select*from product_review;

--���䰡 �ִ� ��ǰ�� ������ �˻��Ͻÿ�
select b.* , a.product_name
from product a,product_review b
where a.product_code=b.product_code;

--ansi����(ǥ��)(�̳�����)
select a.product_name,b.*
from product_review b join product a
  on a.product_code=b.product_code;
  
--�ܺ�����
--������ ����������� ����ǰ �˻�
  select a.product_name, b.*
from product a left join product_review b -- from product a right join product_review b
  on a.product_code=b.product_code;


--���䰡 ���� ��ǰ�� ������ �˻��Ͻÿ�

select a.product_name "�ı���»�ǰ"
from product a left join product_review b -- from product a right join product_review b
  on a.product_code=b.product_code
  where b.content is null;
  
--��ǰ �������̺� product_nameĮ���߰�
--��Į�� ��������:��Į���� ��ȯ,select ������ ���
select  a.review_no, a.product_code,
          (select b.product_name
           from product b
          where a.product_code=b.product_code) PN,
          a.content,
          a.memberid,          
       a.*     
from product_review a ;
  
  
  
  
  
  
  
  
  
  
  
  
  
  