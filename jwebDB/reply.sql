create table reply(
   rno number primary key,                  --��۹�ȣ
   rcontent varchar2(2000) not null,        --��۳���
   replyer  varchar2(20) not null,          --�ۼ���
   rdate    Timestamp default systimestamp,  --�ۼ���
   rupdate    Timestamp,                    --������
   bno number not null,                    --�Խñ۹�ȣ
    foreign key(bno) references board(bno) on delete cascade
);
create sequence seq_ss nocache;

select*from board where bno = 5;
select*from reply;
insert into reply(rno, rcontent, replyer, bno) 
    				 values(seq_ss.nextVal , 'ss' , '33' , 5);

--5���Խñۿ� ��۴ޱ�
insert into reply(rno,rcontent,replyer,bno)
values(seq_ss.nextVal,'dfg3','hh2',5);

insert into reply(rno,rcontent,replyer,bno)
values(seq_ss.nextVal,'�ι�°���','kkk',5);

--���1������
delete from reply where rno=1;

commit;

drop table reply;
drop sequence seq_ss;