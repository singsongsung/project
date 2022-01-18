drop table book purge;
create table book (
	bookNum			number primary key,
	bookTitle		varchar2(50) not null,
	bookWriter		varchar2(50) not null,
	bookPublisher	varchar2(20),
	bookGenre		varchar2(20),
	bookPrice		number	not null,
	bookContent		varchar2(2000),
	bookFile		varchar2(50),
	bookDate		date default sysdate,
	bookReadCount	number default 0

);
select * from book;

drop table bookReview purge;
create table bookReview (
	reviewNum 		number primary key,
	bookNum 		number,
	reviewName		varchar2(20) default 'name',
	reviewContent 	varchar2(2000) not null,
	reviewDate 		date default sysdate,
	reviewScore		number default 5,
	constraint fk_code foreign key (bookNum) references book(bookNum) on delete cascade
);
select * from bookReview;



insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'카레부부의 주말여행 버킷리스트','조유리','길벗','여행가이드북',16500,'상상도 못할 재치 있는 유머로 인스타그램 팔로워 210만 명을 둔 개그맨 김재우, 부부의 사랑스러운 일상으로 팔로워 20만 명을 보유하고 있는 여행 작가 조유리. ‘카레부부’라는 애칭으로 불리고 있는 이 둘의 사랑이 더욱 돈독해진 이유는 ‘여행’이라는 공통적인 취미 덕분이다.','sample01.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'지구인만큼 지구를 사랑할 순 없어','정세랑','위즈덤하우스','에세이',16800,'에세이는 작가가 내미는 손을 잡고 그의 세계로 들어가는 문과 같다. 그래서, 에세이를 읽는 동안 소설에서 경험할 수 없는 다른 시간이 펼쳐진다. 좋은 소설로 독자들과 소통해온 정세랑 작가가 처음으로 자신의 일상을 담은 에세이를 펴냈다.','sample02.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'하루쯤 나 혼자 어디라도 가야겠다','장은정','북라이프','여행가이드북',15800,'여기저기 많은 곳을 돌아다니기보다는 하루 동안 여유롭게 머무르는 느린 여행을 추구한다. 자발적 고립을 즐길 수 있는 이색 숙소, 숲과 바다, 들판같이 탁 트인 자연, 아기자기한 소도시, 산책하기 좋은 길, 입장객 수에 제한을 두는 장소 등 타인과의 접촉은 최소한으로, 나에게 집중하는 시간은 최대한으로 가질 수 있는 곳을 소개한다. ','sample03.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'페르마타, 이탈리아','이금이','사계절','여행가이드북',13000,'이금이 작가의 첫 에세이. 이금이 작가가 등단한 지 38년 만에 첫 에세이를 펴냈다. 70만 부 이상 판매된 《너도 하늘말나리야》, 뮤지컬로 각색된《유진과 유진》 등 따뜻한 문체와 깊이 있는 시선으로 독자의 마음을 어루만지는 작품을 써온 이금이 작가는 어린이부터 성인 독자까지 전 세대에 걸쳐 사랑받는 아동청소년문학 작가다.','sample04.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'인간 실격','다자이 오사무','민음사','일본문학',8000,'자살 미수와 약물 중독, 39세의 젊은 나이에 자살로 생을 마감한 다자이 오사무의 작품 <인간 실격>이 출간됐다. 오직 순수함만을 갈망하는 한 젊은이가 파멸해가는 과정이 그려진다. 뉴욕 타임스는 ''인간의 나약함을 드러내는 데 있어 다자이보다 뛰어난 작가는 드물다''고 평했다.','sample05.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'데미안','헤르만 헤세','민음사','독일문학',8000,'1919년에 간행된 헤르만 헤세의 소설. 소년 싱클레어가 자각을 통해 성장해가는 과정을 그렸다. 싱클레어는 데미안을 통해 어두운 무의식의 세계를 알게 되고, 자신의 내면을 인식하기 시작한다.','sample06.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'군주론','니콜로 마키아벨리','현대지성','서양철학사',7700,'마키아벨리는 이 책에서 군주가 권력을 얻고 유지하려면 때로는 권모술수를 써야 하며, 사악한 행위도 서슴지 말아야 한다고 주장한다. “결과가 수단을 정당화한다”라고 정리되며 “마키아벨리즘”이라는 용어를 낳은 이 사상은, 종교와 윤리를 중시하던 유럽 사회에 큰 충격을 주었다. ','sample07.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'명상록','마르쿠스 아우렐리우스','현대지성','서양고전사상',11200,'영어, 라틴어, 그리스어에 능통한 박문재 번역가가 심혈을 기울여 꼼꼼히 번역한 그리스어 원전 완역판이다. 여기에 독자들을 위해 번역 과정에서 알게된 지식을 바탕으로 번역가의 상세한 해제를 수록하였고, 또한 아우렐리우스가 많은 영향을 받은 에픽테토스의 ‘명언집’을 부록으로 담아 이 불멸의 고전을 좀더 깊이 있게 이해할 수 있도록 하였다.','sample08.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'1984','조지 오웰','민음사','영국문학',9500,'민음사에서 조지 오웰 탄생 100주년을 맞아 그의 대표작 <1984>를 새롭게 펴냈다. <1984>는 널리 알려진 바와 같이 전체주의를 비판하는 디스토피아 소설로, 날카로운 풍자와 정치적 함의로 유명하다. ''절대 권력은 절대 부패한다''는 명언을 탁월하게 형상화한 작품.','sample09.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'카레부부의 주말여행 버킷리스트','조유리','길벗','여행가이드북',16500,'상상도 못할 재치 있는 유머로 인스타그램 팔로워 210만 명을 둔 개그맨 김재우, 부부의 사랑스러운 일상으로 팔로워 20만 명을 보유하고 있는 여행 작가 조유리. ‘카레부부’라는 애칭으로 불리고 있는 이 둘의 사랑이 더욱 돈독해진 이유는 ‘여행’이라는 공통적인 취미 덕분이다.','sample01.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'지구인만큼 지구를 사랑할 순 없어','정세랑','위즈덤하우스','에세이',16800,'에세이는 작가가 내미는 손을 잡고 그의 세계로 들어가는 문과 같다. 그래서, 에세이를 읽는 동안 소설에서 경험할 수 없는 다른 시간이 펼쳐진다. 좋은 소설로 독자들과 소통해온 정세랑 작가가 처음으로 자신의 일상을 담은 에세이를 펴냈다.','sample02.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'하루쯤 나 혼자 어디라도 가야겠다','장은정','북라이프','여행가이드북',15800,'여기저기 많은 곳을 돌아다니기보다는 하루 동안 여유롭게 머무르는 느린 여행을 추구한다. 자발적 고립을 즐길 수 있는 이색 숙소, 숲과 바다, 들판같이 탁 트인 자연, 아기자기한 소도시, 산책하기 좋은 길, 입장객 수에 제한을 두는 장소 등 타인과의 접촉은 최소한으로, 나에게 집중하는 시간은 최대한으로 가질 수 있는 곳을 소개한다. ','sample03.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'페르마타, 이탈리아','이금이','사계절','여행가이드북',13000,'이금이 작가의 첫 에세이. 이금이 작가가 등단한 지 38년 만에 첫 에세이를 펴냈다. 70만 부 이상 판매된 《너도 하늘말나리야》, 뮤지컬로 각색된《유진과 유진》 등 따뜻한 문체와 깊이 있는 시선으로 독자의 마음을 어루만지는 작품을 써온 이금이 작가는 어린이부터 성인 독자까지 전 세대에 걸쳐 사랑받는 아동청소년문학 작가다.','sample04.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'인간 실격','다자이 오사무','민음사','일본문학',8000,'자살 미수와 약물 중독, 39세의 젊은 나이에 자살로 생을 마감한 다자이 오사무의 작품 <인간 실격>이 출간됐다. 오직 순수함만을 갈망하는 한 젊은이가 파멸해가는 과정이 그려진다. 뉴욕 타임스는 ''인간의 나약함을 드러내는 데 있어 다자이보다 뛰어난 작가는 드물다''고 평했다.','sample05.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'데미안','헤르만 헤세','민음사','독일문학',8000,'1919년에 간행된 헤르만 헤세의 소설. 소년 싱클레어가 자각을 통해 성장해가는 과정을 그렸다. 싱클레어는 데미안을 통해 어두운 무의식의 세계를 알게 되고, 자신의 내면을 인식하기 시작한다.','sample06.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'군주론','니콜로 마키아벨리','현대지성','서양철학사',7700,'마키아벨리는 이 책에서 군주가 권력을 얻고 유지하려면 때로는 권모술수를 써야 하며, 사악한 행위도 서슴지 말아야 한다고 주장한다. “결과가 수단을 정당화한다”라고 정리되며 “마키아벨리즘”이라는 용어를 낳은 이 사상은, 종교와 윤리를 중시하던 유럽 사회에 큰 충격을 주었다. ','sample07.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'명상록','마르쿠스 아우렐리우스','현대지성','서양고전사상',11200,'영어, 라틴어, 그리스어에 능통한 박문재 번역가가 심혈을 기울여 꼼꼼히 번역한 그리스어 원전 완역판이다. 여기에 독자들을 위해 번역 과정에서 알게된 지식을 바탕으로 번역가의 상세한 해제를 수록하였고, 또한 아우렐리우스가 많은 영향을 받은 에픽테토스의 ‘명언집’을 부록으로 담아 이 불멸의 고전을 좀더 깊이 있게 이해할 수 있도록 하였다.','sample08.jpg');
insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'1984','조지 오웰','민음사','영국문학',9500,'민음사에서 조지 오웰 탄생 100주년을 맞아 그의 대표작 <1984>를 새롭게 펴냈다. <1984>는 널리 알려진 바와 같이 전체주의를 비판하는 디스토피아 소설로, 날카로운 풍자와 정치적 함의로 유명하다. ''절대 권력은 절대 부패한다''는 명언을 탁월하게 형상화한 작품.','sample09.jpg');

insert into book(bookNum, bookTitle, bookWriter, bookPublisher,bookGenre,bookPrice ,bookContent, bookFile)  
		values((select nvl(max(bookNum),0)+1 from book),'원피스','오다 에이치로','대원씨아이','일본만화',5000,'누적부수 4억, 일본소년만화의 간판. 넓은 바다를 배경으로 자유와 꿈을 위해 모험을 떠나는 이야기. ','sample10.jpg');

select * from book;
delete  from book where bookNum = 19;


insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 18,'testReview1','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 17,'testReview2','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 16,'testReview3','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 13,'testReview4','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 14,'testReview5','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 13,'testReview6','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 12,'testReview7','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 11,'testReview8','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 12,'testReview9','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 11,'testReview10','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 13,'testReview11','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 14,'testReview12','testReview');
insert into bookReview(reviewNum, bookNum,reviewName,reviewContent) values((select nvl(max(reviewNum),0)+1 from bookReview), 11,'testReview13','testReview');
