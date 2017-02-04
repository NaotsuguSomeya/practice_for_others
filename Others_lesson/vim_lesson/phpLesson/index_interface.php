<?php
/*
* interface
* …定義したmethodをクラス内で必ず実装させるためのルール
*/
interface sayHi {
	public static function sayHi(); // 必ずアクセス権はpublicになる。実装の中身はクラス内で書く
}


interface sayHello {
	public function sayHello(); // static有無も合わせる
}

class User implements sayHi, sayHello {
	public static function sayHi(){
		echo "Hi!";
	}
	public function sayHello(){
		echo "Heloooooo!";
	}
}

User::sayHi();

$you = new User();
$you->sayHello();
