# 下記推奨（文法のチェック、警告を出力）
use strict;
use warnings;
use utf8; # 日本語出力時

print("hello world\n");
# 括弧は省略可能
print "hello world よっちゃん\n";
print("-----------\n");
# 変数（スカラー値、配列、配列）
# スカラー変数($)...単一の値:数値・文字列
# my $msg;
my $msg = "hello world by スカラー\n";
print($msg);
my $x = 10;
my $y = 10.567;
my $z = 123_456_789; # _ を含めてもOK
# 演算子
# + - * / % **
my $xx = 10 * 10;
my $yy = 10 % 3;
my $zz = 2 ** 3;
# ++ -- += -=
$x++;
$xx--;
$x += 5;
print("-----------\n");
$a = "hel\tlo world\n";
print("$a");
print("-----------\n");
print("hello" . "world"); #連結
print("hello" x 5);
print("\n-----------\n");
# 配列変数 @
my @sales = (150,200,40);
#my @colors = ('red','blue','green');
my @colors = qw(red green blue);
my @mixed = (150, 'red', 1.234);
print @sales;
print("-----------\n");
my @inc = (1..100);
print @inc;
print("-----------\n");
print @colors;
print $colors[0]; #スカラー値になるので$
print @colors[0..1];
print @sales[0..$#sales]; # 末尾を取得
print("\n-----------\n");
# ハッシュ変数 %
my %nameSales = ("someya"=>200, "yocchan"=>300, "U-CHAN"=>50);
print $nameSales{"someya"}; #スカラー値になるので$
