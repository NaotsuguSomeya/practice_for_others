<?php
/*
create database inquiry_php_db;
grant all on inquiry_php_db.* to php_lesson_user@localhost identified by 'pass';
use inquiry_php_db;
create table inquiry (
	id int not null auto_increment primary key,
	name varchar(255),
	email varchar(255),
	memo text,
	created_at datetime,
	updated_at datetime
);
*/
define('DB_HOST', 'localhost');
define('DB_DATABASE', 'inquiry_php_db');
define('DB_USERNAME', 'php_lesson_user');
define('DB_PASSWORD', 'pass');
define('PDO_DSN', 'mysql:dbhost=' . DB_HOST . ';dbname=' . DB_DATABASE);

define('SITE_URL', 'http://localhost:9000');
define('ADMIN_URL', SITE_URL . '/admin');

error_reporting( E_ALL & ~E_NOTICE);

session_set_cookie_params(0, '/');
