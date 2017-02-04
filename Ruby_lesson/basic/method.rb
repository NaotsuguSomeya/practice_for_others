###############################################################
# メソッド
###############################################################
def sayHi(name = "someya")
	puts "Hi! #{name}!"
end

def sayHiRet(name = "some")
	"Hi! #{name}!" # 最後に評価された値を返す
	# return "Hi! #{name}!"  : 明示的に記載も可能（↑と同じ）
end

sayHi("よっちゃん")
sayHi "yocchan" # （）は省略可能
sayHi

p sayHiRet
p sayHiRet("よっちゃん")
