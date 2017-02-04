<?php
/*
* 例外処理
*/

function div($x, $y){
	try{
		if ($y === 0) {
			throw new Exception("ゼロで割れません！！");
		}
		echo $x / $y . "\n";
	}catch (Exception $e){
		echo $e->getMessage();
	}
}

div(10,3);
div(3,0);
