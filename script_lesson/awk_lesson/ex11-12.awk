# 配列
BEGIN {
	sales[1] = 200
	sales[2] = 500
	sales[3] = 900
	print sales[3]

	color = "yellow red blue"
	# colorsに配列として格納
	split(color, colors)
	print colors[2]
	printf("-----\n")
	for (i in colors){
		print colors[i]
	}
	printf("-----\n")
}
{
	mySales[$1] += $3
}
END {
	for (name in mySales){
		print name ":" mySales[name]
	}
}
