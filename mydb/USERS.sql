--�ڹ�������Ʈ�� ������ user���̺� ����
CREATE TABLE users(
   userid   VARCHAR2(20) PRIMARY KEY,
   username VARCHAR2(30) NOT NULL,
   userpw VARCHAR2(20) NOT NULL,
   userage NUMBER(3) NOT NULL,
   useremail VARCHAR2(50) NOT NULL
);
--ȸ���߰�
INSERT INTO USERS VALUES('TODAY','�����','12345',25,'today@korea.kr');

select*from users where userid = 'TODAY';
select*from users;
commit;
drop table users;