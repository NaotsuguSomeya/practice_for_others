<?php

$dataFile = "./bbs.dat";
define("TAB_STR", "\t");

// CSRF対策
session_start();
function setToken(){
	// 文字列生成
	$token = sha1(uniqid(mt_rand(), true));
	$_SESSION['token'] = $token;
}
function checkToken(){
	if (empty($_SESSION['token'])
	 || ($_SESSION['token'] !== $_POST['token'])){
		 echo "不正なPOSTが行われました！";
		 exit;
	}
}

function h($s){
	return htmlspecialchars($s, ENT_QUOTES, 'UTF-8');
}

// リクエストの受け取り方
if ($_SERVER['REQUEST_METHOD'] == 'POST'
		and isset($_POST['message'])
		and isset($_POST['user'])
	) {

		checkToken();

	// trim : 前後の空白削除
	$message = trim($_POST['message']);
	$user = trim($_POST['user']);

	if ($message !== '') {
		// userが空の場合、別文字列に置き換える
		$user = ($user === '') ? "名無しさん" : $user;
		// message/userのタブ文字を置き換え
		$message = str_replace(TAB_STR, ' ', $message);
		$user = str_replace(TAB_STR, ' ', $user);
		// 現在日時を取得
		$postedAt = date('Y-m-d H:i:s');
		// データ作成
		$newData = $message . TAB_STR . $user . TAB_STR . $postedAt . "\n";
		// ファイルopen
		$fp = fopen($dataFile, 'a');
		// ファイル書き込み
		fwrite($fp, $newData);
		// ファイルclose
		fclose($fp);
	}
} else {
	setToken();
}

// file : １行ずつ読み込んで配列で返す
// FILE_IGNORE_NEW_LINES :最後の改行コードを除く
$posts = file($dataFile, FILE_IGNORE_NEW_LINES);
// var_dump($posts);
// array_reverse : 配列を逆順にする
$posts = array_reverse($posts);
?>
<!DOCTYPE html>
<html>
	<head lang="ja">
		<meta charset="utf-8">
		<title>簡易掲示板 by PHP</title>
	</head>
	<body>
		<h1>簡易掲示板 by PHP</h1>
		<form action="" method="post">
			message: <input type="text" name="message">
			user: <input type="text" name="user">
			<input type="submit" value="投稿！">
			<input type="hidden" name="token" value="<?= h($_SESSION['token']); ?>">
		</form>
		<h2>投稿一覧 ( <?php echo count($posts); ?> 件)</h2>
		<ul>
			<?php if (count($posts)) {
				foreach ($posts as $post) {
					// explode : 配列を分解
					list($message, $user, $postedAt) = explode(TAB_STR, $post);
			?>
				<!-- <?php echo 'xxxxx'; ?>を省略して書く -->
				<li>
					<?= h($message); ?>
					(<?= h($user); ?>) -
					<?= h($postedAt); ?>
				</li>
			<?php 	} ?>
			<?php } else { ?>
			<li>まだ投稿はありません。</li>
			<?php } ?>
		</ul>
	</body>
</html>
