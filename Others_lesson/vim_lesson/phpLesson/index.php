<?php
/*
* Session
* サーバー側にデータ保存（Cookieはブラウザ側）
* 改ざんされない
* 大きなデータが保持できる
*/

session_start(); // 必ず最初にコールする

$_SESSION['username'] = "someya";

echo "セット\n";
echo $_SESSION['username'];  // 他のファイルからも取得可能


// セッション削除
echo "\nアンセット\n";
unset($_SESSION['username']);
