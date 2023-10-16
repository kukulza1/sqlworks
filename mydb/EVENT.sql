--EVENT 
CREATE TABLE event(
   event_no      number primary key,
   event_name    varchar2(50) not null,
   startdate     varchar2(20) not null,
   enddate       varchar2(20) not null
);

CREATE SEQUENCE seq_eno NOCACHE;

insert INTO event(event_no,event_name,startdate,enddate)
values(seq_eno.nextval,'20% 할인쿠폰증정','2023-10-10','2023-10-20');
insert INTO event(event_no,event_name,startdate,enddate)
values(seq_eno.nextval,'마우스패드증정','2023-11-15','2023-11-25');
insert INTO event(event_no,event_name,startdate,enddate)
values(seq_eno.nextval,'벛꽃축제 페스티벌','2023-12-10','2023-12-30');

select*from event;
commit;

--이벤트기간동안에 리뷰를 작성한 고객에게 사은품을 주는행사
--리뷰테이블과 이벤트 테이블 조인
--일대다(이벤트와 리뷰)
--비동등조인(>=,<=,between and)
select a.event_name,
    b.memberid, b.content,b.regdate
from event a, product_review b
where b.regdate 
    between a.startdate and a.enddate;
    
--내부조인
select a.event_name,
    b.memberid, b.content,b.regdate
from event a join product_review b
on b.regdate  >= a.startdate and b.regdate<= a.enddate;
--on b.regdate  between a.startdate and a.enddate;

















