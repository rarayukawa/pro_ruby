class User
end

#userメソッドには何も定義していないが、Userクラスのオブジェクトはto_s、nil?メソッドを呼び出すことができる
user = User.new
user.to_s  #=> "#<User:0x007....."
user.nil?  #=> false
#これはUserクラスがObjectクラスを継承しているため
User.superclass #=> Object

#Objectクラスから継承したメソッドの一覧を確認できる
user = User.new
user.methods.sort  #=> [:!, :!=, :!~.......]