--jweb member ���̺� ����
create table member(
    mno    int, 
    memid  varchar2(20) not null unique,
    pw      varchar2(20) not null,
    name    varchar2(30) not null,
    email   varchar2(40),
    gender  varchar2(8),
    joindate Timestamp default systimestamp,
    primary key(mno)
);

create sequence seq_mno nocache;

insert into member(mno,memid,pw,name,email,gender)
values(seq_mno.nextVal,'kk','11','KSB2','www.naver.com2','��');

select*from member;
delete from member;

--id�� passwd�� ��ġ�ϴ� ȸ�� ã��

select *from member where memid ='khit' and pw='m1234567';

select count(*) as result
from member where memid = 'hh2';

--���̵��� ������ 1�̸� true, �ƴϸ� false ���
select decode(count(*), 1, 'true', 'false') as result from member
where memid = 'hh2';











commit;

drop table member;
drop sequence seq_mno;