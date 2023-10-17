--ÀºÇà°èÁÂ
create table account(
   ano     varchar2(20) primary key, 
   owner   varchar2(20) not null, 
   balance number not null
);

INSERT INTO account values ('11-11-111','SB',10000);

commit;

select*from account;
rollback;
update account set balance =444
where ano = '33-33-333';

TRUNCATE table account;

delete from account where owner = 'ksb';
