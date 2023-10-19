create table test(
      action varchar2(1000)
);

insert into test values('계정생성 및 권한부여를 수행 합니다');

select*from test;

commit;

drop table test;