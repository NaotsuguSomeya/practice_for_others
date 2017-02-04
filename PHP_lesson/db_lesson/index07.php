<?php

define('DB_DATABASE', 'php_db_lesson');
define('DB_USERNAME', 'php_lesson_user');
define('DB_PASSWORD', 'pass');
// PDO_DSN : data sorce name
define('PDO_DSN', 'mysql:dbhost=localhost;dbname=' . DB_DATABASE);

try {
	// connection
	$db = new PDO(PDO_DSN, DB_USERNAME, DB_PASSWORD);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	// bindValue
	$stmt = $db->prepare("insert into users (name, score) values (?, ?)");

	$name ='someya';
	// PDO::PARAM_STR -> 文字列
	$stmt->bindValue(1, $name, PDO::PARAM_STR);
	// $stmt->bindValue(':name', $name, PDO::PARAM_STR);
	$score = 23;
	// PDO::PARAM_INT -> 数値
	$stmt->bindValue(2, $score, PDO::PARAM_INT);
	$stmt->execute(); // bindした値で実行
	$score = 44;
	$stmt->bindValue(2, $score, PDO::PARAM_INT);
	$stmt->execute(); // bindした値で実行

	// PDO::PARAM_NULL
	// PDO::PARAM_BOOL

} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
