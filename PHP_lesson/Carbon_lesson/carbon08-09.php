<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

$dt = Carbon::now();
// copy : $dt自体は変化しない
echo $dt->copy()->addYear() . PHP_EOL;
echo $dt . PHP_EOL;
echo "-----------\n";
$dt = Carbon::now();
echo $dt->startOfDay() . PHP_EOL;
echo $dt->endOfDay() . PHP_EOL;
echo $dt->startOfMonth() . PHP_EOL;
echo $dt->endOfMonth() . PHP_EOL;
echo $dt->startOfWeek() . PHP_EOL;
echo $dt->endOfWeek() . PHP_EOL;
echo "-----------\n";
$dt = Carbon::now();
echo $dt->next(Carbon::MONDAY) . PHP_EOL;
echo $dt->previous(Carbon::MONDAY) . PHP_EOL;
echo "-----------\n";
$dt = Carbon::now();
echo $dt->firstOfMonth(Carbon::MONDAY) . PHP_EOL;
echo $dt->lastOfMonth(Carbon::MONDAY) . PHP_EOL;
echo $dt->nthOfMonth(3, Carbon::MONDAY) . PHP_EOL; // 第3月曜
