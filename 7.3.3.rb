class Users
  def initialize(name)
    #インスタンス変数作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    #インスタンス変数に保存されている名前を表示する
    "Hello, Iam #{@name}."
  end
end
user = User.new('Alice')
user.hello #=> "Hello, I am Alice."

class Users
  def initialize(name)
    #インスタンス変数作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    #shuffled_nameはローカル変数
    shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = User.new('Alice')
#=>いきなりをshuffled_name参照したのでエラーになる
user.hello #=> NameError.......

class Users
  def initialize(name)
    #わざとインスタンス変数への代入をコメントアウトする
    #@name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end
user = User.new('Alice')
#@nameを参照するとnilになる（名前の部分に何も出ない）
user.hello #=> "Hello, I am ."

class Users
  def initialize(name)
    #インスタンス変数作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    #@間違えてnameを@mameと書いてしまった！（@mameはnilになる）
    "Hello, I am #{@mame}."
  end
end
user = User.new('Alice')
#ミスに気づかないと名前が出ないことに驚く
user.hello #=> "Hello, I am ."

class User
  def initialize(name)
    @name = name
  end

  #@nameを外部から参照するためのメソッド
  def name
    @name
  end
end

user = User.new('Alice')
#nameメソッドを経由して@nameの内容を取得する
user.name #=> "Alice"


class User
  def initialize(name)
    @name = name
  end

  #@nameを外部から参照するためのメソッド
  def name
    @name
  end

  #@nameを外部から変更するためのメソッド
  def name=(value)
    @name = value
  end
end
user = User.new('Alice')
#変数に代入しているように見えるが、実際はname=メソッドを呼び出してる
user.name = 'Bob'
user.name #=> "Bob"

class User
  #@nameを読み書きするメソッドが自動的に定義される
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  #nameメソッドやname=メソッドを明示的に定義する必要がない
end
user = User.new('Alice')
#@nameを変更する
user.name = 'Bob'
#@nameを参照する
user.name  #=> "Bob"