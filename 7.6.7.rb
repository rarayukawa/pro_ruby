class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end

#Fooを継承したのでBarでもクラスメソッドのhelloが呼び出せる
Foo.hello   #=> "hello"
Bar.hello   #=> "hello"