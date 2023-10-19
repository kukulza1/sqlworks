--rownum(행번호
--행 수 제한하고 싶을때 사용, sudo columne
create table ex_score(
        name varchar2(10),
        score number(3)
        
);
insert into ex_score values('김하나',94);
insert into ex_score values('고하나',85);
insert into ex_score values('이하나',100);
insert into ex_score values('박하나',97);
insert into ex_score values('정하나',87);
insert into ex_score values('최하나',87);
insert into ex_score values('윤하나',91);
insert into ex_score values('임하나',77);
insert into ex_score values('장하나',80);
insert into ex_score values('함하나',90);

commit;


select rownum, name,score from ex_score
where rownum <=5;

select rownum, name,score from ex_score
where rownum >2 and rownum <=6  ;  --rownum은 1부터  시작해야함

select rownum, name,score from ex_score
where rownum between 1 and  5;  

select rownum, name,score from ex_score
order by rownum desc;

--점수가 높은순으로 5명출력
select rownum, name,score from (select *from ex_score 
order by score desc)
where rownum <6;

--성적순위
select score,name,
rank() over(order by score desc) 순위1 ,
dense_rank() over(order by score desc) 순위2
from ex_score; 








