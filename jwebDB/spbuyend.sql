create table buyend(
  product varchar2(40),
  orderdate Timestamp default systimestamp,
  ordernum  Number(38),
   price    number(20),
   id    varchar2(30)
);

insert into buyend(product,ordernum,price,id)
values('������',1111,15000,'sky123');

insert into buyend(product,ordernum,price,id)
values('������22',11112,150002,'sky1232');

insert into buyend(product,ordernum,price,id)
values('������22',11112,150002,'sky1232');

insert into buyend(product,ordernum,price,id)
values('������33333',11112,150002,'sky1232');

commit;
select*from buyend where id='sky1232';

drop table buyend;