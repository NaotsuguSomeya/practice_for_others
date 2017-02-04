<?php
// require_once : ファイルがすでに読み込まれているかどうかを PHP がチェック
require_once(__DIR__ . '/config.php');
require_once(__DIR__ . '/bingo.php');

$bingo = new \MyApp\Bingo();
$nums = $bingo->create();

?>
<!DOCTYPE html>
<html>
	<head lang="ja">
		<meta charset="utf-8">
		<title>BINGO sheet</title>
		<link rel="stylesheet" href="./mystyle.css">
	</head>
	<body>
		<div class="container">
			<table>
				<tr>
					<th>B</th><th>I</th><th>N</th><th>G</th><th>O</th>
				</tr>
				<?php for ($i=0; $i < 5; $i++) { ?>
				<tr>
					<?php for ($j=0; $j < 5; $j++) { ?>
					<!-- phpの出力 -->
					<td><?= h($nums[$j][$i]);  ?></td>
					<?php } ?>
				</tr>
				<?php } ?>
			</table>
		</div>
	</body>
</html>
