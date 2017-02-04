<?php
/*
* 組み込み関数
*/
$x = 5.4;
echo ceil($x) . "\n"; // 切り上げ
echo floor($x). "\n"; // 切り捨て
echo round($x). "\n"; // 四捨五入
echo rand(1, 10). "\n";

$s1 = "hello";
$s2 = "ねこ";

echo strlen($s1) . "\n"; // 文字数
echo mb_strlen($s2) . "\n"; // 文字数（マルチバイト用）
printf("%s - %s - %.3f", $s1, $s2, $x); // %.3f : 小数点３桁まで表示

$colors = ["red", "blue", "yellow"];

echo count($colors);
echo implode("@", $colors);
