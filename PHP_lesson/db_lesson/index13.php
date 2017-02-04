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

	// update
	$stmt = $db->prepare("update users set score = :score where id = :id");
	$stmt->execute([
		":score" => 100,
		":id" => 7
	]);
	echo "row updated: " . $stmt->rowCount();
	echo "\n--------------\n";
	// delete
	$stmt = $db->prepare("delete from users where id = :id");
	$stmt->execute([
		":id" => 9
	]);
	echo "row deleted: " . $stmt->rowCount();

} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
