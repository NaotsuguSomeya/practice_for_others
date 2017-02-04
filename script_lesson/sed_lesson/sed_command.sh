##################
# d : delete
##################
# 3行目が消える
# -e : expression
sed -e '3d' name.txt
# -e 省略可能
sed '3d' name.txt
# -i : 上書き保存（.bakでバックアップ作成）
sed -i.bkup '3d' name.txt
# -f : ファイル読み込み
sed -f ex1.sed iname.txt

# 3d : adress command
# パターンスペースに対して実行している
# 1. fileから１行読み込んでパターンスペースに格納
# 2. addressにマッチしたらcommandを実行
# 3. パターンスペースを表示

# 3行目以外
sed '3!d' name.txt
# 複数指定
sed '1d;3d' name.txt
# 範囲指定
sed '1,3d' name.txt
sed '3,$d' name.txt
# 2飛ばし
sed '1~2d' name.txt
# 正規表現 nで終わる例
sed '/n$/d' name.txt
# 全削除
sed 'd' name.txt

#####################
# p : print
#####################
# パターンスペースを表示させてpも出す→3行目が２回出る
sed '3p' name.txt
# -n :パターンスペースを表示させない
sed -n '3p' name.txt

#####################
# q : quit
#####################
# ３行目で処理終了
sed '3q' name.txt
#####################
# i : insert
#####################
sed '1i\---start---' name.txt

#####################
# a : append
#####################
sed '1i\---start---' -e '$a\---end---' name.txt

###########################
# y : 文字の置換
###########################
# y/置換対象文字/置換文字/
sed 'y/n/N/' name.txt
# 複数指定（※nc/→NCになるわけではない）
sed 'y/nc/NC/' name.txt

###########################
# s : 文字列の置換
###########################
sed 's/chan/chanchan/' name.
# gフラグ：全部に適用
sed 's/chan/chanchan/g' name.txt
# iフラグ：大文字小文字区別しない
sed 's/chan/chanchan/ig' name.txt
# &や\1を使って置換
sed 's/[0-9]/【&】/' name.txt
sed 's/\([0-9]\) \(.*\)/\2【\1】/' name.

###############################
# ホールドスペース…裏バッファ
# h :hold →パターンスペースをホールドスペースに退避
# g :get → ホールドスペースからパターンスペースに戻す
# x :exchange →入れ替え
###############################