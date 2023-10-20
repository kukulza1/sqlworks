select *from drink;

--테이블 복사
CREATE table drink2 as
select*from drink;

select*from drink2;

--재귀복사(insert into ~ select) ,values사용안함
insert into drink2
select*from drink2;

--rownum(sudo column-제공된 관리자 칼럼)
select rownum,drink_code,drink_name
from drink2
where rownum >0 and rownum<11; --로우넘은 무조건 1부터 시작되어야함
--where rownum >1 and rownum<11; --안됨

--from절 서브쿼리 사용-인라인뷰
--rn사용이유 : rownum은 무조건 1부터 시작되어야 검색이되므로 rn이라는 변수(별칭)로
--1이후 숫자로 첫시작을가능하게 함
select *
from (select rownum rn,drink_code,drink_name from drink2) 
--where rownum >10 and rownum<21; 
where rn >10 and rn<21; --별칭(변수)사용시 가능해짐


