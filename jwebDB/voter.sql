create table voter(
      vno number primary key,
      mid varchar2(20) ,
      bno  number,
      foreign key (mid) references member(memid) on delete cascade,
      foreign key (bno) references board(bno) on delete cascade
);

create sequence seq_vno nocache;

insert into voter(vno,bno,mid)values(seq_vno.nextVal, 1, 'hh2' );

select count(*) from voter where bno = 1 and mid ='khit';
select*from voter;
select count(*) from voter where bno = 1;

truncate table voter;

drop sequence seq_vno;