###############################################################
# 例外
###############################################################

x = 0

begin # try
  p 1 / x
rescue => ex # catch :exに例外オブジェクトが返る
  p ex.message
  p ex.class
  puts "stoped!!"
ensure # finally
  puts "---- END ----"
end

class MyError < StandardError; end

x = 3
begin # try
  if x == 3
    raise MyError
  end
  p 1 / x
rescue MyError
  puts "not 0! this is MyError"
rescue => ex # catch :exに例外オブジェクトが返る
  p ex.message
  p ex.class
  puts "stoped!!"
ensure # finally
  puts "---- END ----"
end
