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

	// PDO::FETCH_CLASS -> 抽出したデータを指定したクラスに直接セット
	$stmt = $db->query("select * from users");
	$users =$stmt->fetchAll(PDO::FETCH_CLASS, "User");
	foreach ($users as $user) {
		$user->show();
	}

} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
