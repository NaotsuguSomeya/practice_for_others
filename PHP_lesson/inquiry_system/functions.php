<?php

function connectDb() {
	try {
		return new PDO(PDO_DSN, DB_USERNAME , DB_PASSWORD);
	} catch (PDOException $e) {
		$e->getMessage();
		exit;
	}
}

function h($s){
	return htmlspecialchars($s, ENT_QUOTES, 'UTF-8');
}

function setToken() {
	if (!isset($_SESSION['token'])) {
		$_SESSION['token'] = sha1(uniqid(mt_rand(), true));
	}
}
function checkToken() {
	if (empty($_POST['token']) || $_POST['token'] != $_SESSION['token']) {
		echo "不正な処理です。";
		exit;
	}
}
