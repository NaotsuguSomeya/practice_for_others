<?php
/*
$msg = "hellow world!";
echo $msg;
var_dump($msg);
定数
*/
define("MY_EMAIL","test@gamil.com");
echo MY_EMAIL; // $は不要

// phpが自動的に生成する定数
var_dump(__LINE__);
var_dump(__FILE__);
var_dump(__DIR__);
