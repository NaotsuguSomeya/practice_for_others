# printf : フォーマットつきで出力
{
	# printf("name: %s, sales: %d\n", $1, $3)
	printf("name: %-10s, sales: %5d\n", $1, $3)
}
