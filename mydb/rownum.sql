--rownum(���ȣ
--�� �� �����ϰ� ������ ���, sudo columne
create table ex_score(
        name varchar2(10),
        score number(3)
        
);
insert into ex_score values('���ϳ�',94);
insert into ex_score values('���ϳ�',85);
insert into ex_score values('���ϳ�',100);
insert into ex_score values('���ϳ�',97);
insert into ex_score values('���ϳ�',87);
insert into ex_score values('���ϳ�',87);
insert into ex_score values('���ϳ�',91);
insert into ex_score values('���ϳ�',77);
insert into ex_score values('���ϳ�',80);
insert into ex_score values('���ϳ�',90);

commit;


select rownum, name,score from ex_score
where rownum <=5;

select rownum, name,score from ex_score
where rownum >2 and rownum <=6  ;  --rownum�� 1����  �����ؾ���

select rownum, name,score from ex_score
where rownum between 1 and  5;  

select rownum, name,score from ex_score
order by rownum desc;

--������ ���������� 5�����
select rownum, name,score from (select *from ex_score 
order by score desc)
where rownum <6;

--��������
select score,name,
rank() over(order by score desc) ����1 ,
dense_rank() over(order by score desc) ����2
from ex_score; 








