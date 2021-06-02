#ユーザーのデータを作成する
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

#氏名を作成するメリット
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

#ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{user[:first_name} #{user[:last_name]}, 年齢: #{user[:age]}"
end

#=> 氏名: Alice Ruby, 年齢: 20
#=> 氏名: Alice Python, 年齢: 30

users[0][:first_name]  #=> 'Alice'
#ハッシュだとタイプミスしてもnilが返るだけなので不具合に気づきにくい
users[0][:first_mame]  #=> nil

#勝手にキーを追加
users[0][:country] = 'japan'
#勝手にfirst_nameを変更
users[0][:first_name] = 'Carol'
#ハッシュの中身が変更される
users[0]  #=> {:first_name=>"Carol", :last_name=>"Ruby", :age=>20, :country=>"japan"}

#Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  #氏名を作成するメソッド
  def full_name
    "#{first_name} #{last_name}"
  end
end

#ユーザーのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

#ユーザのデータを表示する
users.each do |user|
  puts "氏名: #{full_name(user)}、年齢: #{user.age}"
end
#=> 氏名: Alice Ruby, 年齢: 20
#=> 氏名: Alice Python, 年齢: 30

#Userクラスを導入するとタイプミスをした時にエラーが発生する
users[0].first_name #=> 'Alice'
users[0].first_mame   #=> NoMethodError....

#勝手に属性を追加できない
users[0].country = 'japan'
#=> NOMethodError....

#勝手にfirst_naeを変更できない
users[0].first_name = 'Carol'
#=> nOmethodError.....

