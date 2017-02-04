use strict;
use warnings;
use utf8; # 日本語出力時
binmode(STDOUT, ":utf8"); # [Warn]Wide character in print..の回避

# 条件分岐
# 数値 : < > <= >= == !=
my $score = 85;
if ($score > 80) {
  print "OK\n";
} elsif ($score > 50) {
  print "soso..\n"
} else {
  print "NG\n";
}

# 文字列 : eq ne gt lt ge le : 0-9 < A-Z < a-z
# 論理演算子 : && || !
my $name = "yocchan";
if ($name eq "yocchan"){
  print "name is ok\n";
}
# if文の後置
print("後置OK\n") if ($score > 80);
# 三項演算子
# (条件) ? 値1 : 値2;
my $msg = ($score > 100) ? "三項演算子OK\n" : "三項演算子OK-else\n";
print $msg;
