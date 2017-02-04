<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

$dt = Carbon::now();
// 1年足す
echo $dt->addYear() . PHP_EOL;
// 複数年
echo $dt->addYears(3) . PHP_EOL; // 増
echo $dt->subYear() . PHP_EOL; // 減
echo $dt->subYears(2) . PHP_EOL;
// Yearの他に、Month, Day, Hour, Minute, Second
// Weekday
echo $dt->addWeekdays(2) . PHP_EOL;
echo $dt->addWeekdays(2)->addHours(3)->addminutes(20) . PHP_EOL;
