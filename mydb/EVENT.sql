--EVENT 
CREATE TABLE event(
   event_no      number primary key,
   event_name    varchar2(50) not null,
   startdate     varchar2(20) not null,
   enddate       varchar2(20) not null
);

CREATE SEQUENCE seq_eno NOCACHE;

insert INTO event(event_no,event_name,startdate,enddate)
values(seq_eno.nextval,'20% ������������','2023-10-10','2023-10-20');
insert INTO event(event_no,event_name,startdate,enddate)
values(seq_eno.nextval,'���콺�е�����','2023-11-15','2023-11-25');
insert INTO event(event_no,event_name,startdate,enddate)
values(seq_eno.nextval,'�������� �佺Ƽ��','2023-12-10','2023-12-30');

select*from event;
commit;

--�̺�Ʈ�Ⱓ���ȿ� ���並 �ۼ��� ������ ����ǰ�� �ִ����
--�������̺�� �̺�Ʈ ���̺� ����
--�ϴ��(�̺�Ʈ�� ����)
--�񵿵�����(>=,<=,between and)
select a.event_name,
    b.memberid, b.content,b.regdate
from event a, product_review b
where b.regdate 
    between a.startdate and a.enddate;
    
--��������
select a.event_name,
    b.memberid, b.content,b.regdate
from event a join product_review b
on b.regdate  >= a.startdate and b.regdate<= a.enddate;
--on b.regdate  between a.startdate and a.enddate;

















