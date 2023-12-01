create table addrbook(
      bnum number primary key,
      username varchar2(20) not null,
      tel      varchar2(20), 
      email    varchar2(30) unique, --�̸����ߺ�üũ(����ũ)
      gender   varchar2(6),
      regdate  Timestamp default Systimestamp
);
create sequence seq_bnum Nocache;

drop sequence seq_bnum;

insert into addrbook(bnum,username,tel,email,gender)
values(seq_bnum.NextVal,'ksb','000-1111-2222','www.@naver.com','��');

insert into addrbook(bnum,username,tel,email,gender)
values(seq_bnum.NextVal,'gsb','000-1111-2222','www.@naver.com','��');

select*from addrbook;
--�̸����� khit@kh.kr�� �̸���ã��
select email from addrbook
where email='khit@kh.kr';

update addrbook set username='�ݰ�',tel='12235677', gender='��'
where bnum = 4;

drop table addrbook;




commit;