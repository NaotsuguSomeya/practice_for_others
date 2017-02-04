# coding: UTF-8
# ↑日本語を使う場合
# ";"で終わっても良いが非推奨。改行で１命令。
print "hello world"
############################################
# 変数(大文字小文字を区別する)
############################################
print "---------------------------------"
#  - 数値
# 	- 整数、小数、複素数
#	- + - * /
#	// : 商
#	% : 余り
#	** : べき乗
print 10 * 5
print 10 // 3
print 10 % 3
print 2 ** 3

# 整数と小数の演算 = 小数
print 5 + 2.0
# 整数同士の割り算：切り捨ての整数
print 10 / 3 # 3
print 10 / 3.0 # 3.33333...

print "---------------------------------"
#  - 真偽値

print "---------------------------------"
#  - None

print "---------------------------------"
#  - 関数・オブジェクト
print "---------------------------------"
#  - 要素が並んだもの
#	- 文字列 : 文字が並んだもの
#	- リスト : 配列
#	- タプル : 配列（変更不可）
#	- セット : 配列（重複不可）
#	- 辞書 : key / value
# 文字列："", ''
#  u"こんにちは" : uをつける
# + : 連結
# * : 繰り返し
# \ : エスケープ \n \t \\
msg = "hello world, again!"
print msg
print msg + ' and again!!'
print u"無駄" * 10
print 'he\nllo w\torld'
print 'it\'s a pen'
# """ : 改行付きの場合(中で"を使ってもエスケープ不要)
print """<html lang="ja">
<body>
</body>
</html>"""
print "---------------------------------"
# len : 文字数
# find : 検索
# [] : 切り出し [start:end]
s = "abcdefghi"
print len(s)
print s.find("c") # 0,1,2..
print s.find("x") # -1 : 見つからない場合
print s[2]
print s[2:5] # endは含まない！
print s[:5] # 省略可能
print s[2:] # 省略可能
print s[2:-1] # マイナス値：逆から数えて
print "---------------------------------"
# 数値と文字列の型変換
# 文字列→数値 int（整数） float（小数）
# 数値→文字列 str
print 5 + int("5")
print 5 + float("5")
age = 33
print "I am " + str(age) + " years old."
print "---------------------------------"
# リスト
sales = [255, 30, 10, "hello"]
print sales
print len(sales)
sales[2] = 100
print sales
# in : 存在チェック true/false
print 100 in sales
# range(n) : 0からn未満の連番配列
print range(10)
print range(3, 10) # 3~10未満
print range(3, 10, 2) # 3~10未満で2ずつカウントアップ
# sort : 小さい順
sales2 = [20,30,100,50,70]
sales_bk = sales2
sales2.sort()
print(sales2)
# reverse : 逆順
sales2 = sales_bk
sales2.reverse()
print(sales2)
# 文字列↔リスト
# split : 任意の文字で文字列分割→リストで取得
d = "2016/09/11"
print d.split("/")
# join : 配列を任意の文字でつなげて文字列取得
a = ["a", "b", "c", "d"]
print "_".join(a)
print "---------------------------------"
# タプル
a = (2, 5, 8)
# len + * [] も使用可
print len(a)
print a * 3
# a[2] = 10 # エラー
# タプル↔リスト
b = list(a)
print b
c = tuple(b)
print c
# セット（集合型）
a = set([1, 2, 3, 4, 3, 2])
print a # 2, 3 は１回ずつしか出力されない
b = set([3, 4, 5])
# 差集合
print  a - b
# 和集合
print a | b
# 積集合
print a & b
# ^ : 差の和集合 -> (a-b)|(b-a)
print a ^ b
print (a-b) | (b-a)
print "---------------------------------"
# 辞書 key/value
sales = {"someya": 200, "yocchan":1000, "U-CHAN":90} # 順番通り出力されない
print sales
print sales["someya"]
sales["yocchan"] = 500
print sales["yocchan"]
print "someya" in sales
# keys, values, items
print sales.keys()
print sales.values()
print sales.items()

print "---------------------------------"
a = 10
b = 1.234567
c = "sakuchan"
d = {"someya": 200, "yocchan":1000, "U-CHAN":90}
print "age: %d" % a
print "age: %10d" % a
print "age: %010d" % a
print "price: %f" % b
print "price: %.2f" % b
print "name: %s" % c
print "sales: %(someya)d" % d
print "%d and %f" % (a, b)

print "---------------------------------"
# 条件分岐
# 比較演算子： > < <= >= == !=
# 論理演算子: and or not
score = 50
# if score > 60 and score < 80:
if 60 < score < 80:
	print 'ok!'
	print 'OK!'
elif score > 45:
	print 'soso..'
else:
	print 'ng!'

print "OK!" if score > 90 else 'NG!'

print "---------------------------------"
# for ループ
sales = [12, 3456, 56, 9876543]
sum = 0
for sale in sales:
	sum += sale
	print sale
else: # ループが終わってから実行
	print sum
# continue, break
for i in range(10):
	if i == 3:
		continue
	if i == 5:
		break
	print i
print "---------------------------------"
# 辞書のループ
users = {"someya": 200, "yocchan":1000, "U-CHAN":90}
for key, value in users.iteritems():
	print "key: %s value: %d" % (key, value)
print "---------"
# keyだけ
for key in users.iterkeys():
	print key
print "---------"
# valueだけ
for value in users.itervalues():
	print value

print "---------------------------------"
# while
n = 0
while n < 10:
	if n == 3:
		n += 1
		continue
	if n == 5:
		break
	print n
	n += 1
else:
	# breakした場合elseに入らない！
	print "while end!"
