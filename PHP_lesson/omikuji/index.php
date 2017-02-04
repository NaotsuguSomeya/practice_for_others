<?php
	$omikuji = array('大吉','中吉','小吉','凶','大凶');
	// mt_rand : 指定した添字からランダムに選ぶ
	// count : 配列の個数
	$result = $omikuji[mt_rand(0, count($omikuji)-1)];
?>
<!DOCTYPE html>
<html>
	<head lang="ja">
		<meta charset="utf-8">
		<title>おみくじ</title>
	</head>
	<body>
		<h1>おみくじ</h1>
		<p>
			今日の運勢は「<?php echo $result; ?>」です！
		</p>
		<p>
			<!-- $_SERVER['SCRIPT_NAME'] : 自身のファイル -->
			<a href="<?php echo $_SERVER['SCRIPT_NAME']; ?>">もう一度！</a>
		</p>
	</body>
</html>
