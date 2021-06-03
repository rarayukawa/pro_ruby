user = User.new
user.class  #=> User

user = User.new

#userはUserクラスのインスタンスか？
user.instance_of?(User)   #=> true

#userはSTringクラスのインスタンスか？
user.instance_of?(String)  #=> false

user = User.new

#instance_of?はクラスが全く同じでないとtrueにならない
user.instance_of?(Object) #=> false

#is_a?はis_a関係にあればtrueになる
user.is_a?(User)         #=> true
user.is_a?(Object)       #=> true
user.is_a?(BasicObject)  #=> true