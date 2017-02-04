<?php
/*
* 関数
*/
$lang = "ruby";

function sayHi($name = "someya") {
	//~ echo "Hi!!" . $name . "\n";
	$lang = "php";
	return "Hi!!" . $name . ":" . $lang . "\n";
}

//~ sayHi();
//~ sayHi("yocchan");
//~ sayHi("Hoo!!");

//~ echo sayHi();
var_dump(sayHi());
var_dump($lang);
