<?php
// composerの読み込み
require 'vendor/autoload.php';
use Carbon\Carbon; //名前空間

$dt1 = Carbon::create(2020,10,1);
$dt2 = Carbon::create(2020,11,1);

// eq, ne
// gt, gte, lt, lte
var_dump($dt1->ne($dt2)) . PHP_EOL;
var_dump($dt1->gt($dt2)) . PHP_EOL;
var_dump($dt1->lt($dt2)) . PHP_EOL;
echo "-----------\n";
// btween
var_dump(Carbon::create(2020,10,15)->between($dt1, $dt2)) . PHP_EOL;
echo "-----------\n";
// max, min
echo $dt1->max($dt2) . PHP_EOL;
echo $dt1->min($dt2) . PHP_EOL;
