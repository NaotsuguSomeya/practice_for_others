# coding: UTF-8
# 関数
def hello(name, num = 3):
	print "hello! %s! " % name * num
hello("Tom", 2)
hello("Bob")
# 引数の順序を変えられる
hello(num=4, name="Steve")
# 戻り値あり
def helloRet(name, num = 3):
	return "hello! %s! " % name * num
greet = helloRet(num=2, name="Will")
print greet

print "---------------------------------"
# pass
def hello2():
	# 後で処理を実装したいときに処理をパスする
	pass
hello2()

print "---------------------------------"
# map : リストの各要素に関数を適用
def double(x):
	return x * x
print map(double, [2, 5, 10])
# lambda : 無名関数
print map(lambda x:x * x, [2, 5, 10])

print "---------------------------------"
# オブジェクト
# 変数と関数をまとめる
# クラス、インスタンスの概念
class User(object):
	# self : Userオブジェクト自身
	def __init__(self, name):
		self.name = name
	def greet(self):
		print "my name is %s!" % self.name

bob = User("Bob")
tom = User("Tom")
print bob.name
bob.greet()
tom.greet()

print "---------------------------------"
# クラス継承
class SuperUser(User):
	def shout(self):
		print "%s is SUPER!" % self.name

steve = SuperUser("Steve")
print steve.name
steve.greet()
steve.shout()

print "---------------------------------"
# pythonモジュール
import math, random # 複数の場合はカンマ区切りでOK
print math.ceil(5.2)
for i in range(5):
	print random.random()

from datetime import date # 必要なモジュールだけ
print date.today()
