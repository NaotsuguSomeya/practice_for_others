
BEGIN {
	print "----- start ------"
	# フィールドセパレータ: 指定した文字列でフィールドが分けられる
	# FS = "-"
}
{
	# print $1
}
# 中括弧の前に条件を書ける
# < > <= >=
# == !=
# && || !
(NR < 5) || (NR > 10) {
	# print NR ":" $0
}

# 正規表現
# ~ !~
$2 ~ /item-[23]/{
	print $0
}
END {
	print "----- end ------"
}
