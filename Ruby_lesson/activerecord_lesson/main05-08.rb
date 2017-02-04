=begin
###############################################################
 ActiveRecord
  select 系
###############################################################
=end

require 'active_record'
require 'logger'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)

# logger
ActiveRecord::Base.logger = Logger.new(STDOUT)

# Active Recordに紐付けるためテーブル名の単数形にする
class Post < ActiveRecord::Base
  # 検索条件を登録
  scope :top3, -> {order("created_at desc").limit(3)} # Rails4からの書き方
end

puts "**************** all *****************"
p Post.all # select * from posts

puts "**************** first *****************"
p Post.first

puts "**************** last *****************"
p Post.last
p Post.last.title

puts "**************** find *****************"
p Post.find(3)

puts "**************** dynamic finder *****************"
p Post.find_by_title("sample2")
p Post.find_by_body("hello3")
p Post.find_by_title_and_id("sample2", 2)

puts "**************** where *****************"
p Post.where(:title => "sample")
p Post.where(:title => "sample2", :id => 2)
p Post.where("title = ? and id = ? ", "sample2", 2) # place holder
p Post.where("title = :title and id = :id ", {:title => "sample2", :id=>2}) # place holderにシンボルを使う

p Post.where("id > ?", 2)
p Post.where("body like ?", "hello%")

puts "**************** 範囲 *****************"
p Post.where(:id => 1..3)
p Post.where(:id => [1, 3])

puts "**************** order, limit, scope *****************"
p Post.order("id desc").limit(2) # 降順で２行抽出
p Post.top3

puts "**************** first_or_create *****************" # あったらselect,なかったらinsert
p Post.where(:title => "sample").first_or_create
#Post.where(:title => "sample5").first_or_create
Post.where(:title => "sample6").first_or_create do |p| # 他の属性も指定する場合
  p.body = "hello666"
end

p Post.all
