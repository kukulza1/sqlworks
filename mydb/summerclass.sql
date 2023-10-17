--계절학기수강신청테이블
create table summerclass(
       sid      number,          
       subject  varchar2(20),    
       price    number           
);

insert into summerclass values(100,'c',30000);
insert into summerclass values(101,'java',45000);
insert into summerclass values(102,'python',40000);
insert into summerclass values(103,'java',45000);



--계절학기를 수강하는 학생의 학번과 수강하는 과목은?
select sid,subject from summerclass;

--삭제이상
select price from summerclass
where subject ='python';

insert into summerclass values(null,'c++',35000);

--학생은3명튜플은4개인 불일치발생
select count(sid)수강인원 from summerclass;
select count(*)수강인원 from summerclass;

--수정이상
--java수강료가 45000원에서 4만원으로변경
update summerclass set price = 40000
where subject = 'java';

--만약update문을 다음처럼수정할시  수정이상발생
update summerclass set price = 40000
where subject = 'java' and sid =101;

select price from summerclass
where subject ='java';

select count(*) 학생수, sum(price) 수강료총액 from summerclass;


--102학생이 수강취소
delete from summerclass
where sid =102;

commit;

select*from summerclass;
rollback;

truncate table summerclass;