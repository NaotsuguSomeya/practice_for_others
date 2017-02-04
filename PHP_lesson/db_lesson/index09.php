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

	// select all
	$stmt = $db->query("select * from users");
	$users =$stmt->fetchAll(PDO::FETCH_ASSOC);
	foreach ($users as $user) {
		var_dump($user);
	}
  echo $stmt->rowCount();

} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
