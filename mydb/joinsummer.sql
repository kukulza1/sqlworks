--�����б� ������,������̺�
select *from summerprice;
select*from summerregister;

select b.*,a.price
from summerprice a, summerregister b
where a.subject=b.subject;

--join ~using(Į����) :���� Į���̸��� ������� ��Ī���Ұ�
select subject, b.sid,a.price
from summerprice a join summerregister b
  using (subject);

--���� ������ �հ�
insert into summerregister values(301,'python');

select b.subject, sum(price)
from summerprice a, summerregister b
where a.subject=b.subject
group by b.subject;

--���� ������ �հ�� ��ü �Ѱ踦 ���Ͻÿ�
--rollup,cube
--NVL(Į��,'����') :null�ڸ��� '����'���
select NVL(b.subject,'�Ѱ�' )��������,sum(price) �������հ�
from summerprice a, summerregister b
where a.subject=b.subject
group by rollup (b.subject)  ;

select NVL(b.subject ,'�Ѱ�'), sum(price)
from summerprice a, summerregister b
where a.subject=b.subject
group by cube(b.subject)  ;





