create database php_paging_db;
grant all on php_paging_db.* to php_lesson_user@localhost identified by 'pass';
use php_paging_db;

create table comments (
	id int not null auto_increment primary key,
	comment text,
	created datetime,
	updated datetime
);

insert into comments (comment, created, updated) values
	('コメント０１', now(), now()),
	('コメント０２', now(), now()),
	('コメント０３', now(), now()),
	('コメント０４', now(), now()),
	('コメント０５', now(), now()),
	('コメント０６', now(), now()),
	('コメント０７', now(), now()),
	('コメント０８', now(), now()),
	('コメント０９', now(), now()),
	('コメント１０', now(), now()),
	('コメント１１', now(), now()),
	('コメント１２', now(), now()),
	('コメント１３', now(), now()),
	('コメント１４', now(), now()),
	('コメント１５', now(), now()),
	('コメント１６', now(), now()),
	('コメント１７', now(), now()),
	('コメント１８', now(), now()),
	('コメント１９', now(), now()),
	('コメント２０', now(), now());
