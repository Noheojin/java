/*
--������ ���� 
CREATE SEQUENCE SEQ_T_MEMBER_IDX
INCREMENT BY 1 
START WITH 1;

--������ ���� 
DROP SEQUENCE SEQ_T_MEMBER_IDX

--�Ϸù�ȣ ���� ��� (inline view������ ����)
SELECT NVL(MAX(M_IDX),0) +1 FROM T_MEMBER

--���̺� ����
CREATE TABLE T_MEMBER(
	M_IDX 	INT,						--ȸ����ȣ
	M_ID	VARCHAR2(100) NOT NULL,		--ȸ�� ���̵�
	M_PWD	VARCHAR2(100) NOT NULL, 	--��� ��ȣ 
	M_NAME	VARCHAR2(100) NOT NULL,		--�̸�
	M_MAIL	VARCHAR2(100) NOT NULL, 	--����
	M_TEL	VARCHAR2(100) NOT NULL, 	--��ȭ ��ȣ 
	M_ZIPCODE VARCHAR2(100) NOT NULL, 	--�����ȣ 
	M_ADDR VARCHAR2(100) NOT NULL,		--�ּ�
	M_GRADE VARCHAR2(100),				--ȸ�����
	M_REGDATE DATE						--���� ��¥ 
)

--�⺻Ű ���� 
ALTER TABLE T_MEMBER ADD CONSTRAINT PK_T_MEMBER_M_IDX PRIMARY KEY(M_IDX);

--UNIQUE
ALTER TABLE T_MEMBER ADD CONSTRAINT UNIQUE_T_MEMBER_M_ID UNIQUE(M_ID);

--sampledata
insert into T_member values(
						(select nvl (max(m_idx),0) +1 from T_member),
						 'admin',
						 '1234',
						 '������',
						 'admin@gmail.com',
						 '010-1234-1234',
						 '12345',
						 '����� ���Ǳ� �Ÿ���',
						 '������',
						 sysdate
);
insert into T_member values(
						(select nvl (max(m_idx),0) +1 from T_member),
						 'hong',
						 '1234',
						 'ȫ�浿',
						 'hong@gmail.com',
						 '010-1123-1234',
						 '42312',
						 '����� ���Ǳ� �Ÿ���',
						 '�Ϲ�',
						 sysdate
);
-------------------------------------------
SELECT * FROM T_MEMBER
*/