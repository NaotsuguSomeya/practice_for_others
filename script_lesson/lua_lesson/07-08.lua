-- 条件分岐(if)
-- < > <= >=
-- == ~=(NOT)※注意！
-- 論理演算子： and or not
-- 真偽
-- 偽：false nil
--   ※0,""は真になるので注意！
score = 70

if score > 60 and score < 80  then
	print("OK!")
elseif score > 30 then
	print("soso..")
else
	print("NG")
end
