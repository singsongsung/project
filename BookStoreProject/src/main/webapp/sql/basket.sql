DROP TABLE basket purge;

CREATE TABLE basket(
	basketNum			number	primary key,
	basketBookTitle		VARCHAR2(50),
	basketBookWriter	VARCHAR2(50),
	basketBookAmount	number default 1,
	basketBookPrice		number,
	basketBookFile		VARCHAR2(20),
	basketDate			date default sysdate,
	bookNum 			number,
	id					varchar2(20)  
);
ALTER TABLE basket ADD CONSTRAINT basket_fk_id FOREIGN KEY (id) REFERENCES users(id)
ALTER TABLE basket ADD CONSTRAINT basket_fk_bookNum FOREIGN KEY (bookNum) REFERENCES book(bookNum)

INSERT INTO basket (basketNum,basketBookTitle,basketBookWriter,basketBookAmount, basketBookPrice,basketBookFile,bookNum)
VALUES (1,'1번','라',1,10,'d',1);

INSERT INTO basket (basketNum,basketBookTitle,basketBookWriter,basketBookAmount, basketBookPrice,bookNum,id)
VALUES (1,'1번','라',1,10,1,'hong');

select * from basket;

