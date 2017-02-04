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

	// insert
	// $db->exec("insert into users (name, score) values ('someya', 90)");
	// echo "user add!";

	// disconnect
	// $db = null;

	/*
	(1) exec() : 結果を返さない、安全なSQLで使用
	(2) query() : 結果を返す、安全なSQLで使用、何回も実行されない
	(3) prepare() : 結果を返す、安全対策が必要、複数回実行されるSQL(statementオブジェクトが返る)
	*/

	$stmt = $db->prepare("insert into users (name, score) values (?, ?)");
	$stmt->execute(["someya", 1000]);
	// "?"の代わりにシンボルを使う
	$stmt = $db->prepare("insert into users (name, score) values (:name, :score)");
	$stmt->execute([":name" => "yocchan", ":score" =>7000]);

	echo "inserted: " . $db->lastInsertId();

} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
