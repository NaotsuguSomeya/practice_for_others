# コメント
=begin
コメント
コメント
コメント
=end

print "hello, world" # 改行なし
puts "hello, world" # 改行付き
p "hello, world" # デバッグ用

###############################################################
# 変数：英小文字 or _（アンダーバー）から始める → 書き換え可
###############################################################

msg = "hello, world"
puts msg

msg = "hello, world again"
puts msg

###############################################################
# 定数：英大文字 → 書き換え不可
###############################################################
VERSION = 1.1

puts VERSION

VERSION = 1.2 # 警告（処理続行）

puts VERSION


###############################################################
# 数値オブジェクト
###############################################################
p 4.8.class
p 5.2.methods

p 10 + 3
p 10 - 3
p 10 * 3
p 10 / 3
p 10 % 3 # 0を割った余りは出力されない
p 10.0 / 3 #少数表示の場合
p 10 ** 3 #べき乗
p Rational(2, 5) + Rational(3, 4) # 分数
p 2/5r + 3/4r # 分数の簡易表現（↑と同じ）

p 4.6.round # 四捨五入
p 4.6.floor # 切り捨て
p 4.1.ceil #切り上げ

###############################################################
# 文字列
# "" : 特殊文字可、式展開可
# '' ：特殊文字不可
###############################################################
puts "hell\no, w\torld"
puts 'hell\no, w\torld'

puts "price is #{3000 * 4}"
puts 'price is #{3000 * 4}'

name = "someya"
puts "hello #{name}"

# + : 連結
# * : 繰り返し
puts "hello" + ", world"
puts "hello." * 10

# !
# upcase  : 大文字して返す
# upcase! : 大文字にして引数を上書きする（破壊的メソッド）
puts name.upcase
puts name
puts name.upcase!
puts name

# ? : 真偽値
p name.empty?
p name.include?("M")

###############################################################
# 配列
###############################################################
colors = ["red", "blue", "yellow"]
p colors[0] 
p colors[-1] 
p colors[0..2] 
p colors[0...2]  # 2の直前まで指定
p colors[5] # nil

colors[0] = "pink"
colors[1..2] = ["white", "black"]
colors.push("gold") # 要素の追加
colors << "silver" # pushと同じ
p colors

p colors.size
p colors.sort

###############################################################
# ハッシュオブジェクト
# key / value
###############################################################
scores1 = {"someya" => 2000, "yocchan" => 10000, "yo-se-san" => 50000}
p scores1
scores2 = {:someya => 2000, :yocchan => 10000, :yo_se_san => 50000} # ハイフン使えない
p scores2
scores = {someya: 2000, yocchan: 10000, yo_se_san: 50000} # score2の簡易版。ハイフン使えない
p scores

p scores[:someya]
scores[:yocchan] = 200000
p scores

p scores.size
p scores.keys
p scores.values
p scores.has_key?(:someya)


###############################################################
# オブジェクト変換
###############################################################
x = 50
y = "3"
p x + y.to_i # int変換
p x + y.to_f # float変換
p x.to_s + y # string変換

p scores.to_a # ハッシュ→配列変換
p scores.to_a.to_h # 配列→ハッシュ変換

###############################################################
# %記法
###############################################################
puts "1.he\"llo"
puts '2.he\'llo'
# エスケープ不要
puts %Q(3.he"llo) # ダブルクオートと同じ
puts %(4.hell"o) # Qは省略可能
puts %q(5.hel'lo) # シングルクオートと同じ

p ["red", "blue", "yellow"]
p ['red', 'blue', 'yellow']

p %W(red blue yellow) # ダブルクオートと同じ
p %w(red blue yellow) # シングルクオートと同じ


###############################################################
# "文字列" + %値
# %s : 文字列
# %d : 整数
# %f : 浮動小数点数
###############################################################
p "name : %s" % "someya"
p "name : %10s" % "someya" # 10桁確保
p "name : %-10s" % "someya" # 10桁確保＋左寄せ

p "id : %05d, rate : %10.2f" % [123, 34.456]   # %05d : ５桁で０埋め、%10.2f : 整数１０桁・少数２桁

printf("name : %10s\n", "someya")
printf("id : %05d, rate : %10.2f\n" ,123, 34.456)

# sprintは文字列を返すだけ
p sprintf("name : %10s\n", "someya")
p sprintf("id : %05d, rate : %10.2f\n" ,123, 34.456)

###############################################################
# if文
###############################################################
point = 80
#point = gets.to_i  # 入力モード

if point > 80 # thenは省略可能
  puts "great!!"
elsif point > 60 then
  puts "good"
else
  puts "so so..."
end

puts "ok" if point > 60

###############################################################
# case
###############################################################
signal = "blue"
#signal = gets.chomp # chomp:最後の改行コードを取り除く

case signal
when "red" then
	puts "stop!"
when "blue", "green" then
	puts "GO!"
when "yellow" # then 省略可能
	puts "caution!"
else
	puts "wrong signal"
end

###############################################################
# ループ
###############################################################
i = 0
while i < 10 do
	puts "#{i} : while"
	#i = i + 1
	i += 1 # ↑と同じ
end

10.times do |i|
	puts "#{i} : time"
end

# {}で代替
10.times { |i| puts "#{i} : time{}"}


# for :　オブジェクトの要素がなくなるまでループ
puts "******* for ************"
for i in 15..20 do # doは省略可能
	puts i
end

for color in ["red", "blue", "yelloe"] do
	puts color
end

for name, score in {someya:200, yocchan:1000} do
	puts "#{name} : #{score}"
end

# forは内部的にeachを呼んでいるので書き換え可能
# eachは集合オブジェクトのメソッド
puts "******* each ************"
(15..20).each do |i|
	puts i
end

["red", "blue", "yelloe"].each do |color|
	puts color
end

{someya:200, yocchan:1000}.each do |name, score|
	puts "#{name} : #{score}"
end

# {}で置き換え可能
puts "******* replace{} ************"
{someya:200, yocchan:1000}.each { |name, score| puts "#{name} : #{score}"}


# loop : 永遠に処理を繰り返すで置き換え可能
puts "******* loop ************"
i = 0
loop do
	i += 1
	if i % 2 == 0  then
		next # ループをスキップする
	end
	if i > 20
		break
	end
	puts i
end
