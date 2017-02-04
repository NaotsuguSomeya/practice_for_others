# 組み込み関数

# rand() : ランダム(0−1未満)
# int() : 小数点以下切り捨て
{
	# printf("%f, %d\n", rand(), int($3/3))
}

# length() : 文字列長
# substr() : 文字列切り出し
length($1) > 7 {
	# print $0
	print substr($1, 3, 4) #3文字目から4文字分
}
