<?php
/*
if文
==, != : 値のみ
===, !== : 値＋データ型
*/
$score = 70;

if ($score > 90) {
	echo "ok!";
} elseif ($score == 80) {
	echo "elseif ok";
} else {
	echo "";
}

/*
論理演算子
・falseになる場合
 - 文字列：空文字、"0"
 - 数値：0, 0.0
 - 配列：要素数が０
 - null
*/
$x = 0;
if ($x){ // if ($x == true) {
	echo "great!";
} else {
	echo "it's false...";
}

// 三項演算子
$max = ($x > $y) ? $x : $y;
