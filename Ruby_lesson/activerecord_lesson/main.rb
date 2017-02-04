=begin
###############################################################
 ActiveRecord
  アソシエーション
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
  has_many :comments, :dependent => :destroy # 複数系：多
end

class Comment < ActiveRecord::Base
  belongs_to :post # 単数系：1
end

puts "**************** asociation *****************"
post = Post.find(1)
post.comments.each do |comment|
  p comment.body
end

puts "**************** asociation(destroy)before *****************"
p Post.all
Comment.all

Post.find(1).destroy

puts "**************** asociation(destroy)after *****************"
p Post.all
p Comment.all
