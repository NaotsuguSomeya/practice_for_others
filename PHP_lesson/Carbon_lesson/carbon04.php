<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

$dt = Carbon::now();
echo $dt->year . PHP_EOL;
echo $dt->month . PHP_EOL;
echo $dt->day . PHP_EOL;
echo $dt->hour . PHP_EOL;
echo $dt->minute . PHP_EOL;
echo $dt->second . PHP_EOL;
echo "-----------\n";
echo $dt->dayOfWeek . PHP_EOL; // 週の何日目か
echo $dt->dayOfYear . PHP_EOL; // 年の何日目か
echo $dt->weekOfMonth . PHP_EOL; // 月の何週目か
echo $dt->weekOfYear . PHP_EOL; // 年の何週目か
echo "-----------\n";
echo $dt->timestamp . PHP_EOL;
echo $dt->tzName . PHP_EOL; // TimeZone
echo $dt->format('Y年m月d日') . PHP_EOL;
