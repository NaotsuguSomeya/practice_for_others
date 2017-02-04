<?php
/*
* Cookie
* 改ざんされる
* 中身が見れる
*/

// Cookieのセット　ｰ>ブラウザに値をセットする
setcookie("username", "someya");　//デフォルトはブラウザを閉じるとクッキー消滅
//setcookie("username", "someya", time()+60*60); // 第３引数はexpire(←１時間設定)
//setcookie("username", "someya", time()+60*60); // 第３引数はexpire
setcookie("username", "someya", time()-60*60) // マイナスで過去日指定→明示的に削除

// Coookieから値を取得　→他のファイルからも取得可能
echo $_COOKIE['username'];
