create table spmember(
    
    id  varchar2(20) primary key,
    passwd     varchar2(20) not null,
    name    varchar2(30) not null,
    email   varchar2(40),
    phone  varchar2(20),
    zip_code  varchar2(40),
    address  varchar2(40),
    Detailaddress varchar2(40),
    joindate Timestamp default systimestamp
      
);

select*from spmember;



insert into spmember(id , passwd, name, email, phone, zip_code, address, detailaddress)
values('sky12','1111','��¹�','www.naver.com',
                       '000-1111-2222','�ּ�1','�ּ�3','�ּ�4');
                       


commit;


drop table spmember;

drop sequence seqq;