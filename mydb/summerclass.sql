--�����б������û���̺�
create table summerclass(
       sid      number,          
       subject  varchar2(20),    
       price    number           
);

insert into summerclass values(100,'c',30000);
insert into summerclass values(101,'java',45000);
insert into summerclass values(102,'python',40000);
insert into summerclass values(103,'java',45000);



--�����б⸦ �����ϴ� �л��� �й��� �����ϴ� ������?
select sid,subject from summerclass;

--�����̻�
select price from summerclass
where subject ='python';

insert into summerclass values(null,'c++',35000);

--�л���3��Ʃ����4���� ����ġ�߻�
select count(sid)�����ο� from summerclass;
select count(*)�����ο� from summerclass;

--�����̻�
--java�����ᰡ 45000������ 4�������κ���
update summerclass set price = 40000
where subject = 'java';

--����update���� ����ó�������ҽ�  �����̻�߻�
update summerclass set price = 40000
where subject = 'java' and sid =101;

select price from summerclass
where subject ='java';

select count(*) �л���, sum(price) �������Ѿ� from summerclass;


--102�л��� �������
delete from summerclass
where sid =102;

commit;

select*from summerclass;
rollback;

truncate table summerclass;