--�����ȹ:��Ƽ������
DESC PLAN_TABLE
SELECT*FROM OPTIMIZER;
select*from board;

--�ۼ��ڰ� admin�� �Խñ��� �˻�
select*from board
where bwriter = 'admin';

--�ε��� ���� create index �ε����̸� on ���̺��(Į����)
create index sbi on board(bwriter);

--����Ŭ ��Ʈ ����
--/*+ index(���̺�� �ε�����)*/
select /*+ INDEX(board sbi) */ *from board where bwriter = 'admin';

drop index sbi;

