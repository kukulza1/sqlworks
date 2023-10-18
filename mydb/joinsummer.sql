--계절학기 수강료,등록테이블
select *from summerprice;
select*from summerregister;

select b.*,a.price
from summerprice a, summerregister b
where a.subject=b.subject;

--join ~using(칼럼명) :조인 칼럼이름이 같은경우 별칭사용불가
select subject, b.sid,a.price
from summerprice a join summerregister b
  using (subject);

--과목별 수강료 합계
insert into summerregister values(301,'python');

select b.subject, sum(price)
from summerprice a, summerregister b
where a.subject=b.subject
group by b.subject;

--과목별 수강료 합계및 전체 총계를 구하시오
--rollup,cube
--NVL(칼럼,'문자') :null자리에 '문자'출력
select NVL(b.subject,'총계' )수강과목,sum(price) 수강료합계
from summerprice a, summerregister b
where a.subject=b.subject
group by rollup (b.subject)  ;

select NVL(b.subject ,'총계'), sum(price)
from summerprice a, summerregister b
where a.subject=b.subject
group by cube(b.subject)  ;





