create table test(
      action varchar2(1000)
);

insert into test values('�������� �� ���Ѻο��� ���� �մϴ�');

select*from test;

commit;

drop table test;