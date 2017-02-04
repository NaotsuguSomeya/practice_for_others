<?php
/*
* 抽象クラス
* …継承してもらうことが前提。
* …インスタンス化はできない。
*/
abstract class BaseUser {
	public $name;
	abstract public function sayHi(); // 子クラスで必ず実装する。抽象クラスでは中身はない
}

class User extends BaseUser {
	public function sayHi(){ // 子クラスでの実装時はアクセス権、引数は親クラスのmethodと同様にする
		echo "Hi";
	}
}

$tom = new User();
$tom->sayHi();
