# ループ
# for
{
	# printf("%-12s %5d ", $1, $3)
	# for (i =0; i < int($3/10); i++) {
	# 	printf("*")
	# }
	# printf("\n")
}
# while
{
	printf("%-12s %5d ", $1, $3)
	i = 0
	while (i < int($3/10)) {
		printf("*")
		i++
	}
	printf("\n")
}
