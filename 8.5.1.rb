module Loggable

end

class Product
  include Loggable
end
#クラスオブジェクトに対してinclude?メソッドを呼ぶと、引数で渡したモジュールがincludeされているかどうかわかる
Product.include?(Loggable)   #=> true
#include_modulesメソッドを呼ぶと、includeされているモジュールの配列が返る
Product.included_modules  #=> [Loggable, Kernel]

#ancestorsメソッドを使うと、モジュールだけでなくスーパークラスの情報も配列になって帰ってくる
Product.ancestors  #=> [Product, Loggable, Object, Kernel, BasicObject]
product = Product.new
#引数が自クラス、includeしているモジュール、スーパークラスのいずれかに該当すればtrue
product.is_a?(Product)   #=> true
product.is_a?(Loggable)  #=> true
product.is_a?(Object)  #=> true