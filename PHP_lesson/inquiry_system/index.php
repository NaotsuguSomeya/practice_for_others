<?php
require_once('config.php');
require_once('functions.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] != "POST") {
	// 投稿前
	// CSRF対策
	setToken();
} else {
	// 投稿後
	checkToken();
	$name = $_POST['name'];
	$email = $_POST['email'];
	$memo = $_POST['memo'];

	$error = array();
	// エラー処理
	// filter_var : 指定したフィルタでデータをフィルタリング
	// FILTER_VALIDATE_EMAIL : 値が妥当な e-mail アドレスであるかどうかを検証
	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$error['email'] = "メールアドレスの形式が不正です。";
	}
	if ($email == '') {
		$error['email'] = "メールアドレスを入力してください。";
	}
	if ($memo == '') {
		$error['memo'] = "内容を入力してください。";
	}
	if (empty($error)) {
		// DB格納
		$dbh = connectDb();
		$sql = "insert into inquiry(
							name, email, memo, created_at, updated_at
						)values(
							:name, :email, :memo, now(), now()
						)";
		$stmt = $dbh->prepare($sql);
		$param = array(
			":name" => $name,
			":email" => $email,
			":memo" => $memo
		);
		$stmt->execute($param);

		// Thank You ページにジャンプ
		// header : 生の HTTP ヘッダを送信
		header('Location: ' . SITE_URL . '/thanks.html');
		exit;
	}
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>お問い合わせフォーム by PHP</title>
	</head>
	<body>
		<h1>お問い合わせフォーム by PHP</h1>
		<form action="" method="post">
			<p>
				お名前：
				<input type="text" name="name" value="<?php echo h($name); ?>">
			</p>
			<p>
				Eメール(＊)：
				<input type="text" name="email" value="<?php echo h($email); ?>">
				<?php if ($error['email']) {
					echo h($error['email']);
				} ?>
			</p>
			<p>
				内容(＊)：
				<textarea name="memo" rows="5" cols="40"><?php echo h($memo); ?></textarea>
				<?php if ($error['memo']) {
					echo h($error['memo']);
				} ?>
			</p>
			<p>
				<input type="submit" value="送信">
			</p>
			<input type="hidden" name="token" value="<?php echo h($_SESSION['token']); ?>">
		</form>
		<p>
			<a href="<?php echo ADMIN_URL; ?>">管理者メニューへ</a>
		</p>
	</body>
</html>
