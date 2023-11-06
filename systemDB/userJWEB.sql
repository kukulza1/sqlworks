--테이블생성(리소스 할당됨)
create table test(
     msg varchar2(30)
);

--dba권한부여 확인
insert into test values('좋은하루!');

select*from test;