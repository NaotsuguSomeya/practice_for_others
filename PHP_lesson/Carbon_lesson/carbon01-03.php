<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

// 現在日時
$dt = new Carbon();
echo $dt . PHP_EOL;
echo "------------\n";
// static method
$dt = Carbon::now();
echo $dt . PHP_EOL;
echo "------------\n";
$dt = new Carbon('2016-09-09 12:01:31'); // DateTimeクラスを継承している
echo $dt . PHP_EOL;
echo "------------\n";
$dt = Carbon::parse('2016-09-09 12:01:31');
echo $dt . PHP_EOL;
echo "------------\n";
$dt = new Carbon('tomorrow');
echo $dt . PHP_EOL;
echo "------------\n";
$dt1 = Carbon::today();
$dt2 = Carbon::tomorrow();
$dt3 = Carbon::yesterday();
echo $dt1 . " / " . $dt2 . " / " . $dt3 . PHP_EOL;
echo "------------\n";
$dt = Carbon::create(2020, 12, 31, 12, 23, 45);
echo $dt . PHP_EOL;
echo "------------\n";
$dt = Carbon::createFromFormat('Y/m/d H','2016/12/25 23');
echo $dt . PHP_EOL;
