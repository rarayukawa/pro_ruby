#Stringクラスを継承した独自クラスを定義する
class MyString < String
  #Stringクラスを拡張するためのコードを書く
end
s = MyString.new('Hello')
s        #=> "Hello"
s.class  #=> MyString

#Arrayクラスを継承した独自クラスを定義する
class MyArray.new < Array
  #Arrayクラスを拡張するためのコードを書く
end
a = MyArray.new()
a << 1
a << 2
a      #=> [1, 2]
a.class#=> MyArray


class String
  #文字列をランダムにシャッフルする
  def shuffle
    chars.shuffle.join
  end
end

s = 'Hello, I am Alice.'
s.shuffle   #=> "e l.iaIlAce lm.Ho "
s.shuffle   #=> " m,eeA cal Hil.Ilo"

#文字列をキャメルケースからスネークケースに変換する
'MyString'.underscore  #=> "my_string"

#レシーバが引数の配列に含まれていればtrueを返す
numbers = [1, 2, 3]
2.in?(numbers)  #=> true
5.in?(numbers)  #=> false

#以下のUserクラスは外部ライブラリで定義されている想定
class User
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}!"
  end
end

#モンキーパッチを当てる前の挙動を確認する
user = User.new('Alice')
user.hello  #=> "Hello, Alice!"

#helloメソッドにモンキーパッチを当てて独自の挙動を持たせる
class User
  def hello
    "#{@name}さん、こんにちは！"
  end
end

#メソッドの定義を上書きしたのでhelloメソッドの挙動が変わっている
user.hello  #=> "Aliceさん、こんにちは！"

#以下のUserクラスは外部ライブラリで定義されている想定
class User
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}!"
  end
end

#モンキーパッチを当てるためにUserクラスを再オープンする
class User
  # 既存のhelloメソッドはhello_originalとして呼び出せるようにしておく
  alias hello_original hello
  #helloメソッドにモンキーパッチを当てる
  #もともと実装されていたhelloメソッドも再利用する
  　def hello
    "#{hello_original}じゃなくて、#{@name}さん、こんにちは"
  end
end

#モンキーパッチを当てたhelloメソッドの挙動を確認する
user = User.new('Alice')
user.hello   #=>"Hello, Alice!じゃなくて、Aliceさん、こんにちは！"