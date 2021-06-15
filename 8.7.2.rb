module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  #logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
  #(module_functionは対象のメソッドの定義よりも下で呼び出すこと)
  module_function :log
end

#モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello.')  #=> [LOG] Hello.

#Loggableモジュールをincludeしたクラスを定義する
class Product
  include Loggable

  def title
    #includeしたLoggableモジュールのlogメソッドを呼び出す
    log 'title is called.'
    'A great movie'
  end
end

#ミックスインとしてlogメソッドを呼び出す
product = Product.new
product.title
#=>[LOG] title is called.
#=>"A great movie"

product = Product.new
"logメソッドはprovateなので外部からは呼び出せない"
product.log 'Hello.' #=> NoMethodError....


module Loggable
  #ここから下のメソッドは全てモジュール関数
  module_function

  def log(text)
    puts "[LOG] #{text}"
  end
end
