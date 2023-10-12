--뷰(VIEW)생성
--업뎃,삭제 가능
--주소에'대한민국'을 포함하는 고객들로 구성된 뷰를 만드시오
CREATE VIEW VW_customer
as SELECT*FROM customer
WHERE address like '대한민국%';

select *from vw_customer;

--이름이 김연아를 신유빈으로 변경함
update vw_customer
set name ='신유빈'
where name = '김연아';

--고객아이디가 3인고객을 삭제
--참조하고있는 다른테이블이있어 삭제불가능
delete from vw_customer  where cusid = 3;

commit;


--뷰 삭제
drop view vw_customer;