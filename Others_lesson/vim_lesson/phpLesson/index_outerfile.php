<?php
/*
* 外部ファイル読み込み
* require  ... fatal error で処理終了
* requi_once　... 読みここまれているかPHPがチェック。真の場合は読み込みをスキップ
* 
* include ... warning で処理続行
* include_once　... 読みここまれているかPHPがチェック。真の場合は読み込みをスキップ
* 
* autoload  ... クラスのみ
*/

require "index_class.php";

// 名前空間に別名をつける
//use Someyaspace\lib as lib;
use Someyaspace\lib; // as を省略すると階層の最後の部分が採用される

//~ spl_autoload_register(function($class){
	//~ require "$class.php"; // class名とファイル名を合わせておく
	//~ require "index_$class.php"; // class名とファイル名を合わせておく
//~ });

echo "====================\n";
lib\User::getMessage("requireしました");


$bob = new lib\User("Bob");
echo $bob->name . "\n";
$bob->sayHi();
