<?php
/*
文字列
"" : 特殊文字（\n, \t）、変数で使う
'' ： ↑ができない
*/
$name = "someya";
$s1 = "hello, {$name}!\nhello,again!";
$s2 = 'hello, $name!\nhello,again!';
$s3 = "hello, ${name}!\nhello,again!";

var_dump($s1);
var_dump($s2);
var_dump($s3);

// 連結
$s4 = "hello" . ", combine" . ", strings";
var_dump($s4);
