drop table if exists posts;
-- Active Recordに紐付けるため複数形にする
create table posts (
	id integer primary key,
	title text,
	body text,
	created_at,
	updated_at
);
insert into posts (id, title, body) values(1, "title1", "hello1");
insert into posts (id, title, body) values(2, "title2", "hello2");
insert into posts (id, title, body) values(3, "title3", "hello3");

drop table if exists comments;
create table comments (
	id integer primary key,
	post_id integer, -- 外部キー:単数形…active_recordが紐付ける
	body text,
	created_at,
	updated_at
);
insert into comments (id, post_id, body) values(1, 1, "comments hello1-1");
insert into comments (id, post_id, body) values(2, 1, "comments hello1-2");
insert into comments (id, post_id, body) values(3, 1, "comments hello1-3");
insert into comments (id, post_id, body) values(4, 2, "comments hello2");
insert into comments (id, post_id, body) values(5, 3, "comments hello3-1");
insert into comments (id, post_id, body) values(6, 3, "comments hello3-2");
