# awkプログラム：拡張子は何でもOK
# 文の区切り：改行 or ;
# コマンドラインで awk '{ print $3 }' test.dat
# レコード：行
# フィールド：項目 $n -> n項目 $0: 行全体
# { print $3 }

# NF : 項目数 -> $NF最後の項目
# NR : 行数
# { print $NF }
{
	print NR ":" $0
}
