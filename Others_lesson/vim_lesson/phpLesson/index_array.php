<?php
/*
* 配列
* foreach
* コロン構文
*/
//~ $sales = array(
	//~ "yocchan" => 200,
	//~ "someya" => 600,
	//~ "yo-se-san" => 1000,
//~ );

// PHP5.4〜
$sales = [
	"yocchan" => 200,
	"someya" => 600,
	"yo-se-san" => 1000,
];

//~ var_dump($sales["yo-se-san"]);

//~ $sales["yo-se-san"] = 900;

//~ var_dump($sales["yo-se-san"]);

foreach ($sales as $key => $value){
	echo "($key) $value \n";
}


// key省略　ｰ> 0からの連番
$colors = ["red", "blue", "yellow"];

//~ var_dump($colors[0]);

foreach ($colors as $value) {
	echo "$value \n";
}


// コロン構文
foreach ($colors as $value):
	echo "$value \n";
endforeach;

?>
<ul>
	<?php foreach ($colors as $value): ?>
	<li><?php echo "$value \n"; ?></li>
	<?php endforeach; ?>
</ul>
