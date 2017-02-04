use strict;
use warnings;
use utf8; # 日本語出力時
binmode(STDOUT, ":utf8"); # [Warn]Wide character in print..の回避

# ループ
# while
my $i = 0;
while ($i < 10) {
  print "i : $i\n";
  $i++;
}
print "---------\n";
# for
for (my $i = 0; $i < 10; $i++) {
  print "i : $i\n";
}
print "---------\n";
# foreach : 配列ループ
my @colors = qw(red green blue orange pink);
# foreach my $color (@colors) {
# for my $color (@colors) {
for (@colors) {
  # print "color : $color\n";
  print "color : $_\n"; # 特殊変数
}
print "---------\n";
# ハッシュのループ
my %sales = ("someya"=>200, "yocchan"=>300, "U-CHAN"=>50);
foreach my $key (keys(%sales)) { # keys : キー取得
  print "key: $key, value: $sales{$key}\n";
}
print "---------\n";
for (keys %sales) {
  print "key: $_, value: $sales{$_}\n";
}
