class Users
  #first_nameの読み書きを許可する
  attr_accessor :first_name
  #省略
end

user = User.new('Alice', 'Ruby', 20)
user.first_name => "Alice"
#first_nameを変更する
user.first_name = 'アリス'
user.first_name  #=> "アリス"