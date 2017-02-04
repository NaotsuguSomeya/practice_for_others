<?php
require_once('../config.php');
require_once('../functions.php');

session_start();
$dbh = connectDb();

// idチェック
if (preg_match('/^[1-9][0-9]*$/', $_GET['id'])) {
	$id = (int)$_GET['id'];
} else {
	echo "不正なIDです！";
	exit;
}

if ($_SERVER['REQUEST_METHOD'] != "POST") {
	// 投稿前
	// CSRF対策
	setToken();

	$stmt = $dbh->prepare("select * from inquiry where id = :id limit 1");
	$stmt->execute(array(":id" => $id));

	$inquiry = $stmt->fetch() or die("no one found");
	$name = $inquiry['name'];
	$email = $inquiry['email'];
	$memo = $inquiry['memo'];
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
		// DB更新
		$sql = "update inquiry set
							name = :name,
							email = :email,
							memo = :memo,
							updated_at = now()
						where id = :id";
		$stmt = $dbh->prepare($sql);
		$params = array(
			":name" => $name,
			":email" => $email,
			":memo" => $memo,
			":id" => $id
		);
		$stmt->execute($params);

		header('Location: ' . ADMIN_URL);
		exit;
	}
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>データ編集</title>
	</head>
	<body>
		<h1>データ編集 by PHP</h1>
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
				<input type="submit" value="更新">
			</p>
			<input type="hidden" name="token" value="<?php echo h($_SESSION['token']); ?>">
		</form>
		<p>
			<a href="<?php echo ADMIN_URL; ?>">戻る</a>
		</p>
	</body>
</html>
