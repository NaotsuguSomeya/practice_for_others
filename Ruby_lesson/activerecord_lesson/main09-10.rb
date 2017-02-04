=begin
###############################################################
 ActiveRecord
  update,delete 系

  delete : レコード削除のみ、高速
  destroy: レコード削除＋関連オブジェクト削除、deleteより遅い
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
end

puts "**************** update 1 *****************"
post = Post.find(1)
post.title = "new title!!"
post.save
p Post.find(1)

puts "**************** update 2 *****************"
post = Post.find(1)
post.update_attribute(:title, "new title 2!!!!!") # 単項目のみ
p Post.find(1)

puts "**************** update 3 *****************"
post = Post.find(1)
post.update_attributes(:title => "new title 3!!!!!", :body => "hello,hello,hello") # 複数項目
p Post.find(1)

puts "**************** update 4 *****************"
post = Post.where(:id  => 1..2).update_all(:title => "new title update_all", :body => "hello update_all") # 複数レコード・複数項目
p Post.where(:id => 1..2)

=begin
puts "**************** delete,destroy *****************"
#Post.find(1).delete
#Post.where(:id => 2..3).delete_all # 複数の場合

# Post.find(4).destroy
# Post.where(:id => 5..6).destroy_all
=end
p Post.all
