# 制御構造 if
{
	print NR ":" $0
	if (NR % 5 == 0) {
		print "------"
	} else if (NR % 5 == 1){
		print "++++++"
	} else {
		print "***"
	}
}
