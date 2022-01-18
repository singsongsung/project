drop table users purge;

create table users(
	id			varchar2(20)	primary key,
	password	varchar2(20),
	name		varchar2(20),
	email		varchar2(30),
	address		varchar2(100),
	phoneNum	varchar2(20),
	role		number default 0
	
);

select * from users;

insert into users values('admin', 'admin', '관리자', 'admin@gmail.com', '서울시 강남구','010-0000-0000',1);
insert into users(id, password, name, email, address, phoneNum) values('hongkd', '1234', '홍길동', 'user@gmail.com','서울시 종로구','010-1111-1111');