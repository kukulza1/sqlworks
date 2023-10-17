--���������̺�
create table summerprice(
      subject varchar2(20) primary key,
      price   number
);
insert into summerprice values('c',30000);
insert into summerprice values('java',45000);
insert into summerprice values('python',40000);

--�����б� ������̺�
create table summerregister(
       sid number primary key,
       subject varchar2(20),
       foreign key(subject) references summerprice(subject)
);
insert into summerregister values (100,'c');
insert into summerregister values (101,'java');
insert into summerregister values (102,'python');
insert into summerregister values (103,'java');

select *from summerregister;
select *from summerprice;

commit;

--102���л��� ������û���
delete from summerregister
where sid=102;

--���̼����������
select price from summerprice
where subject ='python'; 
--���������̺� 'c++'���¸� 35000���� �߰�
insert into summerprice values('c++',35000);

update summerprice set price =40000
where subject ='java';

--�����ᰡ ����Ѱ���
select subject,price from summerprice
where price =(select min(price) from summerprice);



drop table summerprice;
drop table summerregister;


