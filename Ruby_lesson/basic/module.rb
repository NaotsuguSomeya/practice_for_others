###############################################################
# module
#  - クラス、メソッドをまとめる
#  - 継承はできない
#  - 名前空間を作る
###############################################################
module Movie # １文字目は大文字
  
  VERSION = 1.1
  
  def self.encode
    puts "encoding..."
  end
  
  def self.export
    puts "exporting..."
  end
end

Movie.encode
Movie.export

p Movie::VERSION

###############################################################
# ミックスイン
###############################################################
module Debug
  
  # インスタンスメソッドとして使う
  def info
    puts "#{self.class} debug info..."
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info
