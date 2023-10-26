--등급매기기,ntile()
create table exscore(
     이름 varchar2(20),
     국어 number,
     영어 number,
     수학 number
);

insert into exscore values('고한나',116,77,75);
insert into exscore values('이한나',101,69,80);
insert into exscore values('박한나',118,62,60);
insert into exscore values('정한나',96,72,70);
insert into exscore values('최한나',103,77,55);
insert into exscore values('김한나',78,66,61);
insert into exscore values('한한나',85,72,75);
insert into exscore values('장한나',99,70,53);
insert into exscore values('윤한나',105,75,69);
insert into exscore values('임한나',117,68,73);

select*from exscore;

--ntile(등급수) over(drder by 칼럼명)
--주어진 수만큼 행들을 n등분한 후 현재행에 해당하는 등급을 구하는 함수
select 이름,국어,ntile(8) over(order by 국어 desc) 국어등급
from exscore;
--윤하나를 제외한 국어등급
select 이름,국어,ntile(8) over(order by 국어 desc) 국어등급
from exscore
where 이름 <>'윤한나'; -- <>는 =의 반대

select 이름,국어,ntile(8) over(order by 국어 desc) 국어등급, 국어,

수학,ntile(8) over(order by 수학 desc) 수학등급, 수학,

영어,ntile(8) over(order by 영어 desc) 영어등급, 영어

from exscore;


truncate table exscore;
commit;