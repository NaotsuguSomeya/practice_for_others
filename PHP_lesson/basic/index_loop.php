<?php
/*
ループ処理
*/
$i = 11;
$j = $i;

// while文
echo '$i is ... ';
while ($i < 10) {
	echo $i;
	$i++;
}

echo "\n";
echo '$j is ... ';
do {
	echo $j;
	$j++;
} while ($j < 10);

// for文
echo "\n";
echo '$k is ... ';
for ($k = 0; $k < 10; $k++){
	if ($k === 5){
		continue;
	}elseif ($k === 8){
		break;
	}	
	echo $k;
}
