--�Խ������̺�
CREATE TABLE BOARDS(
    bno      number primary key,
    btitle   VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL,  --CLOB(CHARACTER LARGE OF BYTE)
    bwriter  VARCHAR2(50) NOT NULL,
    bdate    DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),   
    bfiledata BLOB          --BLOB(BINARY LARGE OF BYTE)

);
--������ ����
CREATE SEQUENCE seq_bno NOCACHE;

--�Խñ� �߰�
INSERT INTO BOARDS(bno,btitle,bcontent,bwriter)
VALUES (seq_bno.nextval,'smartphone','�Ｚ������21�Դϴ�.','TODAY');
INSERT INTO BOARDS(bno,btitle,bcontent,bwriter,bdate,bfilename,bfiledata)
VALUES (seq_bno.nextval,'smartphone','�Ｚ������21�Դϴ�.','TODAY',SYSDATE,
         NULL,NULL);


SELECT*FROM BOARDS 
where bwriter ='SKY123'
ORDER BY bno DESC;

COMMIT;











