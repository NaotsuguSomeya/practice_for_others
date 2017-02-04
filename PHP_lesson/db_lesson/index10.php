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

	// where
	$stmt = $db->prepare("select score from users where score > ?");
	$stmt->execute([60]);
	$users =$stmt->fetchAll(PDO::FETCH_ASSOC);
	foreach ($users as $user) {
		var_dump($user);
	}
  echo $stmt->rowCount() . " recoad found!";
	echo "\n--------------\n";
	$stmt = $db->prepare("select name from users where name like ?");
	$stmt->execute(['%s%']); // %はここで使う
	$users =$stmt->fetchAll(PDO::FETCH_ASSOC);
	foreach ($users as $user) {
		var_dump($user);
	}
  echo $stmt->rowCount() . " recoad found!";
	echo "\n--------------\n";
	$stmt = $db->prepare("select score from users order by score desc limit ?");
	// $stmt->execute([1]); // 基本的に文字列で渡されるのでlimitに数値を渡せない
	$stmt->bindValue(1, 1, PDO::PARAM_INT);
	$stmt->execute();
	$users =$stmt->fetchAll(PDO::FETCH_ASSOC);
	foreach ($users as $user) {
		var_dump($user);
	}
  echo $stmt->rowCount() . " recoad found!";

} catch (PDOException $e) {
	echo $e->getMessage();
	exit;
}
