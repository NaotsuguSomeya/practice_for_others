<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

$dt1 = Carbon::create(2020, 10, 1);
$dt2 = Carbon::create(2020, 11, 1);
// 日時の差
echo $dt1->diffInDays($dt2) . PHP_EOL;
echo $dt1->diffInHours($dt2) . PHP_EOL;
echo $dt1->diffInMinutes($dt2) . PHP_EOL;
echo "----------\n";
echo $dt1->diffForHumans($dt2) . PHP_EOL;
Carbon::setLocale('ja');
echo $dt1->diffForHumans($dt2) . PHP_EOL;
echo "----------\n";
//テスト時
$birthday = Carbon::create(1985, 07, 01);
Carbon::setTestNow(Carbon::create(2020, 07, 01));
if ($birthday->isBirthDay(Carbon::now())){
	echo ':)' . PHP_EOL;
} else {
	echo ':<' . PHP_EOL;
}
// setTestNow解除
Carbon::setTestNow();
if ($birthday->isBirthDay(Carbon::now())){
	echo ':)' . PHP_EOL;
} else {
	echo ':<' . PHP_EOL;
}
