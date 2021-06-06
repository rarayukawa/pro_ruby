#helloメソッドを持つGreeterモジュールを定義
module　Greeter
  def hello
    'heloo'
  end
end

#モジュールのインスタンスは作成できない
　greeters ＝ Greeter.new  #≒> NoMethodError .....

#他のモジュールを継承して新しいモジュールを作ることはできない
module AwesomeGreeter < Greeter
end
#=> SyntaxError....
