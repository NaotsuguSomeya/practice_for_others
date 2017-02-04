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

	$stmt = $db->prepare("insert into users (name, score) values (?, ?)");
	$name ='someya';
	$stmt->bindValue(1, $name, PDO::PARAM_STR);

	// bindValue:値をbind
	// bindParam:変数への参照をbind
	$stmt->bindParam(2, $score, PDO::PARAM_INT);
	$score = 52;
	$stmt->execute();
	$score = 77;
	$stmt->execute();
	$score = 87;
	$stmt->execute();


} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
