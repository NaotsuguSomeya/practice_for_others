-- ループ while repeat..until for
print("-------while-------")
i = 0
while i < 10 do
	if i == 5 then
		break
	end
	print(i)
	i = i + 1
end
print("-------repeat..until-------")
j=0
repeat
	print(j)
	j = j + 1
until j >=10
print("-------for-------")
-- 開始値, 終了値, 加算値（1は省略可能）
for i=0, 9, 2 do
	print(i)
end
print("-------for(array:ipairs)-------")
a = {12, 24, "hello"}
-- ipairs : 数字がキーの場合
for i, value in ipairs(a) do
	print("[" .. i .. "]" .. value)
end
print("-------for(array:pairs)-------")
b = {name = "someya", score = 90}
-- pairs : 文字列がキーの場合
for i, value in pairs(b) do
	print("[" .. i .. "]" .. value)
end
