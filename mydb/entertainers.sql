create table entertainers(
       name      varchar2(30) ,
       brithday  varchar2(20),
       job       varchar2(30)
);

insert into entertainers values('양동근','19790601','배우');
insert into entertainers values('박은빈','19920904','배우,가수');
insert into entertainers values('장기하','19820220','가수,작가');

commit;

select*from entertainers
where job like '%가수%';

--제1정규화 대상(속성값이 원자값이어야 한다)
select*from entertainers
where job = '%가수%';

--연예인생일테이블, 연예인직업테이블로 분해해여야한다.
create table enterbirth(
        name varchar2(30),
        birthday varchar2(20)
);
insert into enterbirth values('양동근','19790601');
insert into enterbirth values('박은빈','19920904');
insert into enterbirth values('장기하','19820220');
commit;

select*from enterbirth;

create table enterjob(
      ename varchar2(30),
      jobnm varchar2(30)
      
);

insert into enterjob values('양동근','배우');
insert into enterjob values('양동근','가수');
insert into enterjob values('박은빈','배우');
insert into enterjob values('장기하','배우');
insert into enterjob values('장기하','가수');

select *from enterjob;
--연예인의 이름과 생년월일,직업을 검색하시오
select b.ename,a.birthday, b.jobnm
from enterbirth a,enterjob b
where a.name = b.ename;

select a.name,a.birthday,b.jobnm
from enterbirth a join enterjob b
   on a.name = b.ename;

drop table enterbirth;











