-- 文字列
s = "hello"
print(s)
s = 'world'
print(s)
-- \ : エスケープ
s = "ab'c\"de"
print(s)
s = "123\n456"
print(s)
s = "123\t456"
print(s)
-- エスケープされない
s = [[hello\tppp]]
print(s)
-- 文字列連結
s = "hello" .. " world"
print(s)
