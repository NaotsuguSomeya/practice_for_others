use strict;
use warnings;
use utf8; # 日本語出力時
binmode(STDOUT, ":utf8"); # [Warn]Wide character in print..の回避

# ファイル入出力
# "<" : 実行モード（この場合入力）
# or die : 失敗時の処理
open(my $in, "<", "./test.dat") or die("could not open file");
# 書き込み
open(my $out, ">", "./test_out.dat") or die("could not open file");
while (<$in>) {
  print $_;
  print $out $_;
}
close $in;
close $out;
