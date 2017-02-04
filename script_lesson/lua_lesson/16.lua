-- テーブル
a = {2, 25, 42, 1}
-- ソート
print("--------sort------------")
table.sort(a)
for i, v in ipairs(a) do
	print(v)
end
print("--------insert------------")
b = {2, "hai", 42, "yo"}
table.insert(b, 2, "last")
for i, v in ipairs(b) do
	print(v)
end
print("--------remove 1------------")
table.remove(b, 3)
for i, v in ipairs(b) do
	print(v)
end
print("--------remove 2------------")
-- 削除された値が返り値に入る
rm = table.remove(b, 3)
print(rm)
