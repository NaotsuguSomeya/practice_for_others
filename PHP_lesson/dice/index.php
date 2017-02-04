<?php
	// mt_rand : 指定した添字からランダムに選ぶ
	$dice1 = mt_rand(1, 6);
	$dice2 = mt_rand(1, 6);

	$zorome = ($dice1 == $dice2) ? true: false;
?>
<!DOCTYPE html>
<html>
	<head lang="ja">
		<meta charset="utf-8">
		<title>サイコロ</title>
	</head>
	<body>
		<h1>サイコロ</h1>
		<p>
			サイコロの目は「<?php echo $dice1; ?>」「<?php echo $dice2; ?>」です！
			<?php if ($zorome) { ?>
				ゾロ目です！
			<?php } ?>
		</p>
		<p>
			<!-- $_SERVER['SCRIPT_NAME'] : 自身のファイル -->
			<a href="<?php echo $_SERVER['SCRIPT_NAME']; ?>">もう一度！</a>
		</p>
	</body>
</html>
