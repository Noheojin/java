/*
--시퀀스 생성 
CREATE SEQUENCE SEQ_T_MEMBER_IDX
INCREMENT BY 1 
START WITH 1;

--시퀀스 삭제 
DROP SEQUENCE SEQ_T_MEMBER_IDX

--일련번호 관리 대신 (inline view형식의 쿼리)
SELECT NVL(MAX(M_IDX),0) +1 FROM T_MEMBER

--테이블 생성
CREATE TABLE T_MEMBER(
	M_IDX 	INT,						--회원번호
	M_ID	VARCHAR2(100) NOT NULL,		--회원 아이디
	M_PWD	VARCHAR2(100) NOT NULL, 	--비밀 번호 
	M_NAME	VARCHAR2(100) NOT NULL,		--이름
	M_MAIL	VARCHAR2(100) NOT NULL, 	--메일
	M_TEL	VARCHAR2(100) NOT NULL, 	--전화 번호 
	M_ZIPCODE VARCHAR2(100) NOT NULL, 	--우편번호 
	M_ADDR VARCHAR2(100) NOT NULL,		--주소
	M_GRADE VARCHAR2(100),				--회원등급
	M_REGDATE DATE						--가입 날짜 
)

--기본키 생성 
ALTER TABLE T_MEMBER ADD CONSTRAINT PK_T_MEMBER_M_IDX PRIMARY KEY(M_IDX);

--UNIQUE
ALTER TABLE T_MEMBER ADD CONSTRAINT UNIQUE_T_MEMBER_M_ID UNIQUE(M_ID);

--sampledata
insert into T_member values(
						(select nvl (max(m_idx),0) +1 from T_member),
						 'admin',
						 '1234',
						 '관리자',
						 'admin@gmail.com',
						 '010-1234-1234',
						 '12345',
						 '서울시 관악구 신림동',
						 '관리자',
						 sysdate
);
insert into T_member values(
						(select nvl (max(m_idx),0) +1 from T_member),
						 'hong',
						 '1234',
						 '홍길동',
						 'hong@gmail.com',
						 '010-1123-1234',
						 '42312',
						 '서울시 관악구 신림동',
						 '일반',
						 sysdate
);
-------------------------------------------
SELECT * FROM T_MEMBER
*/