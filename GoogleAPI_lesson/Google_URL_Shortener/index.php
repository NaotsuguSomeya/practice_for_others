<?php

function h($s){
	return htmlspecialchars($s, ENT_QUOTES, "UTF-8");
}

$apiKey = 'AIzaSyBoVoB_Po-7mGV8Hf0TQo7F-NFrrDrQaE4';
$longUrl = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

// 短縮
$url = 'https://www.googleapis.com/urlshortener/v1/url?key=' . $apiKey;
$param = json_encode(array('longUrl'=> $longUrl));

// cURLセッションを初期化
$curl = curl_init();
// URLや他の適当なオプションを設定
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
curl_setopt($curl, CURLOPT_POST, 1);
curl_setopt($curl, CURLOPT_POSTFIELDS, $param);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

$res = json_decode(curl_exec($curl));
curl_close($curl);
// var_dump($res);

$shortUrl = $res->id;

// 統計取得
$url = 'https://www.googleapis.com/urlshortener/v1/url?shortUrl='.$shortUrl.'&projection=FULL&key=' . $apiKey;
$res = json_decode(file_get_contents($url));
// var_dump($res);
$clicks = $res->analytics->allTime->shortUrlClicks;
?>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<title>google短縮URLの練習</title>
	</head>
	<body>
		<h1>google短縮URLの練習</h1>
		<p>Original: <?php echo h($longUrl); ?></p>
		<p>Share: <input type="text" value="<?php echo h($shortUrl); ?>" onclick="this.select();"></p>
		<p>Clicks: <?php echo h($clicks); ?> (<a href="<?php echo h($shortUrl) . '+'; ?>" target="_blank">詳細</a>) </p>
	</body>
</html>
