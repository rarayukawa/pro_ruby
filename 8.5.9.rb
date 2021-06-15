module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'abc'

#文字列は通常logメゾットを持たない
s.log('Hello.') #=> NoMethodError///

#文字列にLoggableモジュールのメソッドを得意メソッドとしてミックスインする
s.extebd(Loggable)

#Loggableモジュールのメソッドが呼び出せるようになる
s.log('Hello.')  #=>[LOG] Hello.