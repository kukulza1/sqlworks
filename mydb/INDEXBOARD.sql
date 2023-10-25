--실행계획:옵티마이저
DESC PLAN_TABLE
SELECT*FROM OPTIMIZER;
select*from board;

--작성자가 admin인 게시글을 검색
select*from board
where bwriter = 'admin';

--인덱스 생성 create index 인덱스이름 on 테이블명(칼럼명)
create index sbi on board(bwriter);

--오라클 힌트 적용
--/*+ index(테이블명 인덱스명)*/
select /*+ INDEX(board sbi) */ *from board where bwriter = 'admin';

drop index sbi;

