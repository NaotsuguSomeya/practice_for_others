use strict;
use warnings;
use utf8; # 日本語出力時
binmode(STDOUT, ":utf8"); # [Warn]Wide character in print..の回避

# ファイル入出力
# or die : 失敗時の処理
open(my $in, "<", "./test.dat") or die("could not open file");
while (<$in>) {
  # 置換
  # $_ =~ s/abc/ABC/;
  s/abc/ABC/; # 省略可能
  # if ($_ =~ /[a-z]/) {
  if (/[a-z]/) { # 省略可能
    print "if[a-z] : " . $_;
  } else {
    print $_;
  }

}
close $in;
