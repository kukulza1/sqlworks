--review
--clob(character large object- 매우큰 문자열 자료형(4gb)
CREATE TABlE product_review(
    review_no  number primary key,
    memberid   varchar2(20) not null,
    content    clob not null, 
    regdate    Date Default SYSDATE,
    product_code char(6) not null,
    FOREIGN KEY(product_code) REFERENCES product(product_code)
);
--시퀀스(자동순번) nocache(초기화하면 1부터시작)
create sequence seq_rno NOCACHE;
DROP SEQUENCE seq_rno;

INSERT INTO product_review (review_no, product_code, memberid,content)
values(seq_rno.nextval,'100001','today10','무소음인데 소음이 조금있음');
INSERT INTO product_review (review_no, product_code, memberid,content)
values(seq_rno.nextval,'100001','cloud100','무선이라 편합니다!');
INSERT INTO product_review (review_no, product_code, memberid,content)
values(seq_rno.nextval,'100002','sky123','게임할 맛 납니다.');

select*from product_review;
commit;
delete from product_review
where memberid = 'sky123';

--테이블은유지하고 데이터만 전체삭제
TRUNCATE TABlE product_review;


--상품코드'100001'이고,회원아이디가 cloud100인 상품의 리뷰를 출력하시오
select *from product_review
where product_code = '100001' and memberid = 'cloud100';

--상품3개 리뷰있는상품2개
--리뷰가 있는 상품을 검색하시오(동등조인)
-- 조건일치:p테이블의 기본키 = pr테이블의 외래키
select *
from product p, product_review pr
where p.product_code = pr.product_code;
--표준방식 (이너조인
select *
from product p join product_review pr
  on p.product_code = pr.product_code;
  
--리뷰의 유무에관계없이 상품의 정보를검색(동등조인)
--product의 상품음 모두출력되고,리뷰는 있든없든 관계없음 리뷰가 없을경우null
select *
from product p, product_review pr
where p.product_code = pr.product_code(+);

--표준방식 (외부조인 outer생략가능
select *
from product p left outer join product_review pr
  on p.product_code = pr.product_code;
  
  select b.product_code,
         b.product_name,
         b.price,
         a.memberid,
         a.content,
         a.regdate        
from product_review a  right join product b
  on a.product_code = b.product_code;




