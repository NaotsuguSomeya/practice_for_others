=begin
###############################################################
 ActiveRecord
  バリデーション
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
  validates :title, :presence => true
  validates :body, :length => {:minimum => 5}
end


puts "**************** error case *****************"
post = Post.new(:body => "1234")
#post.save
# post.save!  # Error表示
if (!post.save)
  p post.errors.messages
end

Post.all

puts "**************** asociation *****************"
