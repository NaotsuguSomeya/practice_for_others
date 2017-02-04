###############################################################
# クラス
#  - メソッド：デフォルトでpublic
#             initializeメソッド、クラス外メソッドはprivate
#  - private : レシーバーを指定できない
###############################################################
class User # 必ず大文字から
  
  # 1.name = (value): setter
  # 2.nameにアクセス : getter
  attr_accessor :name
  # getterだけ　→　attr_reader
  
  # クラス変数("@"を２個つける)
  @@count = 0
  
  # 定数：１文字目が大文字（慣習的に全部大文字）
  VERSION = 1.1
  
  # constructor
  def initialize(name)
    @name = name  # インスタンス変数は"@"をつける
    @@count += 1
  end
  
  def sayHi
    # self : インスタンス自身 self.name -> @nameが取得できる
    puts "Hi! #{@name} !!" # インスタンス変数はインスタンス内であればどこでも使える
    puts "Hi! #{self.name} use self!!"
    puts "Hi! #{name} use without self!!" # 意味が曖昧にならないかぎりself省略可能
    
    sayPrivateHi  # 意味的にはself.sayPrivateHiだが、レシーバーを指定できないのでselfはつけられない
  end
  
  # クラスメソッド(static参照)
  def self.info
    puts "#{VERSION} : This is User class.[#{@@count} instances]"
  end
  
  private
    def sayPrivateHi
      puts "this is private only!"
    end
end

class AdminUser < User
  def sayHello
    puts "Hello Admin #{@name}"
  end
  
  # Override(メソッドの上書き)
  def sayHi
    puts "Hi! from Admin #{@name}"
      
    #sayPrivateHi # 継承しているのでUserのprivateメソッドが使える
    
    # privateメソッドのOverride
    def sayPrivateHi
      puts "this is private only! from Admin"
    end
  end
end

tom = User.new("Tom")
tom.sayHi # レシーバー

tom.name = "tom Jr."
p tom.name
tom.sayHi

bob = AdminUser.new("Bob")
User.info
p User::VERSION

bob.sayHi
bob.sayHello

# private method
#~ User.new.sayPrivateHi <- NG!
bob.sayPrivateHi
