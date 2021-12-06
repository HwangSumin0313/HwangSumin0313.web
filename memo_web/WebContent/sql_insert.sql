CREATE TABLE member(
	user_ID VARCHAR(20),
	user_Password VARCHAR(20),
	user_Name VARCHAR(20),
	user_Gender VARCHAR(20),
	user_Email VARCHAR(50),
	PRIMARY KEY (user_ID)
);

INSERT INTO member VALUES('aaa','1111','김철수','남','aaa@asd.com');
INSERT INTO member VALUES('bbb','2222','이영희','여','bbb@asd.com');
INSERT INTO member VALUES('ccc','3333','마은정','여','accca@asd.com');
INSERT INTO member VALUES('ddd','4444','이진수','남','ddb@asd.com');
INSERT INTO member VALUES('eee','5555','정수진','여','ff@asd.com');
INSERT INTO member VALUES('fff','6666','배은혁','남','bgg@asd.com');

create table memo(
  memoId number,
  title varchar(50),
  content varchar(2048),
  userId varchar(20),
  exist int,
  indate date default SYSDATE,
  primary key(memoId)
);

CREATE SEQUENCE AUTO_SEQ_NUMBER
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	NOCACHE
	NOCYCLE;
     
DROP SEQUENCE AUTO_SEQ_NUMBER;

SELECT VALUE FROM NLS_SESSION_PARAMETERS WHERE PARAMETER = 'NLS_DATE_FORMAT'

INSERT INTO memo VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'내가 1등!','첫번째 글입니다','test',1,SYSDATE);
INSERT INTO memo VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'두 번째 글','ㅈㄱㄴ','test2',1,SYSDATE);
INSERT INTO memo VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'반가워요^^','안녕하세요~','test3',1,SYSDATE);
INSERT INTO memo VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'방금 가입했어요','반가워요^^','test4',1,SYSDATE);
INSERT INTO memo VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'테스트중입니다~','5qjsWo','test5',1,SYSDATE);

select * from member;
select * from memo;

delete from member where user_id='';
delete from memo where memoId=2;

drop table member;
drop table memo;


------------------------------------------


