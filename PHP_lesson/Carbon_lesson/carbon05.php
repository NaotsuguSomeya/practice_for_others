<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

$dt = Carbon::now();

var_dump($dt->isToday()) . PHP_EOL;
var_dump($dt->isTomorrow()) . PHP_EOL;
var_dump($dt->isYesterday()) . PHP_EOL;
echo "-----------\n";
var_dump($dt->isFuture()) . PHP_EOL; // 未来か
var_dump($dt->isPast()) . PHP_EOL; //過去か
var_dump($dt->isLeapYear()) . PHP_EOL; //うるう年か
echo "-----------\n";
var_dump($dt->isWeekday()) . PHP_EOL;
var_dump($dt->isWeekend()) . PHP_EOL;
echo "-----------\n";
var_dump($dt->isSameDay(Carbon::now())) . PHP_EOL; // 特定の日付と比較
