create table entertainers(
       name      varchar2(30) ,
       brithday  varchar2(20),
       job       varchar2(30)
);

insert into entertainers values('�絿��','19790601','���');
insert into entertainers values('������','19920904','���,����');
insert into entertainers values('�����','19820220','����,�۰�');

commit;

select*from entertainers
where job like '%����%';

--��1����ȭ ���(�Ӽ����� ���ڰ��̾�� �Ѵ�)
select*from entertainers
where job = '%����%';

--�����λ������̺�, �������������̺�� �����ؿ����Ѵ�.
create table enterbirth(
        name varchar2(30),
        birthday varchar2(20)
);
insert into enterbirth values('�絿��','19790601');
insert into enterbirth values('������','19920904');
insert into enterbirth values('�����','19820220');
commit;

select*from enterbirth;

create table enterjob(
      ename varchar2(30),
      jobnm varchar2(30)
      
);

insert into enterjob values('�絿��','���');
insert into enterjob values('�絿��','����');
insert into enterjob values('������','���');
insert into enterjob values('�����','���');
insert into enterjob values('�����','����');

select *from enterjob;
--�������� �̸��� �������,������ �˻��Ͻÿ�
select b.ename,a.birthday, b.jobnm
from enterbirth a,enterjob b
where a.name = b.ename;

select a.name,a.birthday,b.jobnm
from enterbirth a join enterjob b
   on a.name = b.ename;

drop table enterbirth;











