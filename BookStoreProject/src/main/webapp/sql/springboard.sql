drop table springboard purge;

create table springboard(
	seq		number(5)		primary key,
	title	varchar2(200),
	writer	varchar2(20),
	content varchar2(2000),
	regdate date	default sysdate,
	cnt		number(5)	default		0,
	boardReplyRef	number(5),
	boardReplyLev 	number(5),
	boardReplySeq 	number(5)
);

select * from springboard;
delete from springboard where seq=11;


insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'책 추가 요청','이외수작가','제꺼 책 추가좀해주세요ㅠㅠ');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'하둡 강의집 판매원해요','김천국강사','하둡 강의집 판매합니다');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'배송문의','오바마대통령','배송언제오나요?');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'쿠폰사용이 안돼요ㅠㅠ','C.호날두','쿠퐁이 등록이안됩니다...');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'원피스 완결 언제나나요?','오다에이치로','죽기전엔 나오겠죠?');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'교재 대량구매 원합니다','이구원장','6500권 구입원합니다 디엠주세요');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'게시글 등록 테스트','윤태걸','소스 판매합니다');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'국어 책 배송이 너무 느려요','세종대왕','ㅠㅠ국어책 배송이 너무 느립니다');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'환불요청합니다','이재용','삼성 이재용 아닙니다');
insert into springboard(seq, title, writer, content)  
      values((select nvl(max(seq),0)+1 from springboard),'배송 언제오나요?','CJ대한통운','배송 넘 느려요');



select count(*) from springboard;
