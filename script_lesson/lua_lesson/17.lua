-- 日付・時刻
-- 基準日からの秒数
x = os.time()
print(x)
-- 現在日付・時刻
y = os.date()
print(y)
y = os.date("%Y-%m-%d")
print(y)
print("--------------------")
z = os.date("*t") -- すべての情報が配列で返る
for key, value in pairs(z) do
	print(key, value)
end
