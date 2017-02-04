use strict;
use warnings;
use utf8; # 日本語出力時
binmode(STDOUT, ":utf8"); # [Warn]Wide character in print..の回避

# サブルーチン(関数)
sub max {
  # my $max = $_[0];
  # @_ : に引数が全部入る
  # shift : 先頭を抜き出す(@_から先頭の要素が抜ける)
  # my $max = shift(@_);
  my $max = shift; #省略可能
  # if ($_[1] > $max) {
  #   $max = $_[1];
  # }
  # return $max;
  # foreach (@_) {
  for (@_) { #置き換え可能
    $max = $_ if $_ > $max;
  }
  $max; # 省略可能
}

print max(12, 8, 100, 23,234) . "\n";
