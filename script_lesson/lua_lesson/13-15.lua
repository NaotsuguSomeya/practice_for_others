-- 組み込み関数
--[[
最大値取得：math.max(1, 111, 13, 4567, ....)
最小値取得：math.min(1, 111, 13, 4567, ....)
小数切り上げ：math.ceil(n.nnn)
小数切り捨て：math.floor(n.nnn)
乱数(0以上1未満)：math.random()
乱数(1-nの整数)：math.random(n)
乱数(n-mの整数)：math.random(n, m)
]]
x = math.ceil(2.2)
print(x)

y = math.random(20,100)
print(y)
print("--------------------")
-- 文字列1
-- 文字数
s = string.len("yocchan")
print(s)
s2 = #"yocchan-yocchan"
print(s2)
-- 部分文字列
s3= string.sub("yocchan", 3, 5)
print(s3)
s3= string.find("yocchan", "c")
print(s3)
-- 置換
s4= string.gsub("yocchan", "c", "d")
print(s4)
-- その他
s5= string.upper("yocchan")
print(s5)
s6= string.reverse("yocchan")
print(s6)
print("--------------------")
-- 文字列2
x = 10
y = 21.23456
name = "someya"
s7 = string.format("name:%s x:%d y:%f", name, x, y)
print(s7)
s8 = string.format("name:%s x:%10d y:%f", name, x, y)
print(s8)
s9 = string.format("name:%s x:%-10d y:%f", name, x, y)
print(s9)
s10 = string.format("name:%s x:%010d y:%.2f", name, x, y)
print(s10)
