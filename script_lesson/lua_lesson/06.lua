-- テーブル（配列/連想配列）
a = {12, 23456, "hello"}
-- 添字は１から始まるので注意！
print(a[1])

a[1] = 999
print(a[1])
-- #変数：要素の個数
print(#a)

-- key/value
users = {
	name = "someya", score = 90
}
print(users["name"])
print(users.score)
