# 関数
function getRate(n) {
	return int(n / 20) * 0.1
}
{
	printf("%-12s %5d rate: %0.1f\n", $1, $3, getRate($3))
}
