=begin
###############################################################
 ActiveRecord
  - Ruby on Rails のORマッパー（Object <> RDB）
  
  insert系
###############################################################
=end

require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)

# Active Recordに紐付けるためテーブル名の単数形にする
class Post < ActiveRecord::Base
end

# insert用オブジェクト作成①
post = Post.new(:title => "sample", :body=>"hello!")

post.save # insert

# insert用オブジェクト作成②
post = Post.new
post.title = "sample2"
post.body = "hello2"

post.save # insert

# insert用オブジェクト作成③
post = Post.new do |p|
  p.title = "sample3"
  p.body = "hello3"
end
post.save # insert

# insert用オブジェクト作成④…newしない,saveまで一気に実行
Post.create(:title => "sample4", :body=>"hello4")

p Post.all # select * from posts
