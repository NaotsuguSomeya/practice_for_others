<?php
define('DB_HOST', 'localhost');
define('DB_DATABASE', 'php_paging_db');
define('DB_USERNAME', 'php_lesson_user');
define('DB_PASSWORD', 'pass');
define('PDO_DSN', 'mysql:dbhost=' . DB_HOST . ';dbname=' . DB_DATABASE);
// １ページごとの表示件数
define('COMMENTS_PER_PAGE', 5);

$reqPage = $_GET['page'];
if (preg_match('/^[1-9][0-9]*$/', $reqPage)){
	$page = (int)$reqPage;
} else {
	$page=1;
}

// すべてのエラーを表示（NOTICE系は除く）
error_reporting(E_ALL & ~E_NOTICE);
try {
	// connection
	$db = new PDO(PDO_DSN, DB_USERNAME, DB_PASSWORD);
} catch (PDOException $e) {
	echo $e->getMessage();
	exit();
}

// select  * from comments limit OFFSET, COUNT
$offset = COMMENTS_PER_PAGE * ($page - 1);
$sql = "select * from comments limit " . $offset . ", " . COMMENTS_PER_PAGE;
$comments = array();
foreach ($db->query($sql) as $row) {
	array_push($comments, $row);
}
// var_dump($comments);
// exit();
$total = $db->query("select count(1) from comments")->fetchColumn();
$totalPages = ceil($total / COMMENTS_PER_PAGE);

$from = $offset + 1;
$baseTo = $offset + COMMENTS_PER_PAGE;
$to = $baseTo < $total ? $baseTo : $total;

function h($s){
	return htmlspecialchars($s, ENT_QUOTES, 'UTF-8');
}

?>
<!DOCTYPE html>
<html>
	<head lang="ja">
		<meta charset="utf-8">
		<title>ページング機能 by PHP</title>
	</head>
	<body>
		<h1>コメント一覧</h1>
		<p>
			全 <?php echo $total; ?> 件中 <?php echo $from; ?> 〜 <?php echo $to; ?> 件を表示しています。
		</p>
		<ul>
		<?php foreach ($comments as $comment) { ?>
			<li><?php echo h($comment['comment']) ?></li>
		<?php } ?>
		</ul>
		<?php if ($page > 1) { ?>
		<a href="?page=<?php echo $page -1; ?>">前へ</a>
		<?php } ?>
		<?php for ($i=1; $i <= $totalPages; $i++) { ?>
		<?php if($page == $i) { ?><strong><?php } ?>
		<a href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
		<?php if($page == $i) { ?></strong><?php } ?>
		<?php } ?>
		<?php if ($page < $totalPages) { ?>
		<a href="?page=<?php echo $page +1; ?>">次へ</a>
		<?php } ?>
	</body>
</html>
