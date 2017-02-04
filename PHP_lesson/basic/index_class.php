<?php
/*
* クラス
*/

// 名前空間…他の人が作ったクラス名とバッティングしないように名前をつける
// バックスラッシュで階層構造にもできる
//　必ず最初は<?php から始めること
namespace Someyaspace\lib;

class User {
	// property
	public $name;
	public static $count = 0;
	
	// constructor
	public function __construct($name){
		$this->name = $name;
		// 自分をstatic参照
		self::$count++;
	}
	
	// method
	public function sayHi() {
	// final public function sayHi() {  ...finalでOverridできなくなる
		echo "Hi, I am $this->name!\n";
	}
	
	// static method : インスタンスを作らないで使用可能
	public static function getMessage($val){
		echo "this message is from User class. And val is $val \n";
	}
}

class AdminUser extends User {
	public function sayHello(){
		echo "Hello! from admin class!!\n";
	}
	// Override
	public function sayHi() {
		echo "[admin]Hi, I am $this->name!\n";
	}
}

$bob = new User("Bob");
$tom = new User("Tom");

echo $bob->name . "\n";
$tom->sayHi();

$steve = new AdminUser("Steve");
echo $steve->name . "\n";
$steve->sayHi();
$steve->sayHello();

// static参照
User::getMessage("すたてぃっく");

echo User::$count. "\n";

