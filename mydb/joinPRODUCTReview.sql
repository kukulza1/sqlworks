--조인연습
--product,product_review
select *from product;
select*from product_review;

--리뷰가 있는 상품의 정보를 검색하시오
select b.* , a.product_name
from product a,product_review b
where a.product_code=b.product_code;

--ansi조인(표준)(이너조인)
select a.product_name,b.*
from product_review b join product a
  on a.product_code=b.product_code;
  
--외부조인
--리뷰의 유무상관없이 모든상품 검색
  select a.product_name, b.*
from product a left join product_review b -- from product a right join product_review b
  on a.product_code=b.product_code;


--리뷰가 없는 상품의 정보를 검색하시오

select a.product_name "후기없는상품"
from product a left join product_review b -- from product a right join product_review b
  on a.product_code=b.product_code
  where b.content is null;
  
--상품 리뷰테이블에 product_name칼럼추가
--스칼라 서브쿼리:한칼럼만 반환,select 절에서 사용
select  a.review_no, a.product_code,
          (select b.product_name
           from product b
          where a.product_code=b.product_code) PN,
          a.content,
          a.memberid,          
       a.*     
from product_review a ;
  
  
  
  
  
  
  
  
  
  
  
  
  
  