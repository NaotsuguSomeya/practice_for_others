<?php
/*
* フォームからのデータ受け渡し
*/

$usernm = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$usernm = $_POST['username'];
	
	$errflg = false;
	$usernmlen = strlen($usernm);
	if ($usernmlen > 8){
		$errflg = true;
	}
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<title>ユーザー名チェック</title>
</head>
<body>
	<form action="" method="POST">
		<input type="text" name="username" placeholder="user name"
			value="<?php echo htmlspecialchars($usernm, ENT_QUOTES, 'UTF-8'); ?>"
		>
		<input type="submit" value="チェック！">
		<?php if ($errflg) { echo "名前が長すぎます！（{$usernmlen}文字）"; } ?>
	</form>
</body>
</html>
