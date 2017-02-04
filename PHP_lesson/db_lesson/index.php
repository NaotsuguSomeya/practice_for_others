<?php

define('DB_DATABASE', 'php_db_lesson');
define('DB_USERNAME', 'php_lesson_user');
define('DB_PASSWORD', 'pass');
// PDO_DSN : data sorce name
define('PDO_DSN', 'mysql:dbhost=localhost;dbname=' . DB_DATABASE);

class User {
	// FETCH_CLASSではカラムを自動的にpublicのプロパティにセットしてくれるので省略可能
	// public $id;
	// public $name;
	// public $score;
	public function show() {
		echo "$this->name ($this->score)";
	}
}

try {
	// connection
	$db = new PDO(PDO_DSN, DB_USERNAME, DB_PASSWORD);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	// transaction
	$db->beginTransaction();
	$db->exec("update users set score = score + 10 where id = 7");
	$db->exec("update usersXXXX set score = score - 10 where id = 8");
	$db->commit();

} catch (PDOException $e) {
	$db->rollback(); // $dbオブジェクトはcatchの中でも使える！
	echo $e->getMessage();
	exit;
}
