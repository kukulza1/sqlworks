--수강료테이블
create table summerprice(
      subject varchar2(20) primary key,
      price   number
);
insert into summerprice values('c',30000);
insert into summerprice values('java',45000);
insert into summerprice values('python',40000);

--여름학기 등록테이블
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

--102번학생의 수강신청취소
delete from summerregister
where sid=102;

--파이선과목수강료
select price from summerprice
where subject ='python'; 
--수량료테이블에 'c++'강좌를 35000원에 추가
insert into summerprice values('c++',35000);

update summerprice set price =40000
where subject ='java';

--수강료가 가장싼과목
select subject,price from summerprice
where price =(select min(price) from summerprice);



drop table summerprice;
drop table summerregister;


