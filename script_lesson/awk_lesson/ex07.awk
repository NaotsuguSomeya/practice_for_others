# 変数
# 演算子
# + - * / % ^
# += ++ --
# 文字列：スペースで連結
BEGIN {
	sum = 0
}
{
	# sum = sum + $3
	sum += $3
}
END {
	print sum
}
