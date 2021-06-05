class User
  # =で終わるメソッドを定義する
  def name=(value)
    @name = value
  end
end

user = User.new
#変数に代入するような形式でname=メソッドを呼び出せる
user.name = 'Alice'

class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name

    def ==(other)
      if other.is_a?(Product)
        #商品コードが一致すれば同じとProduct見なる
        code == other.code
      else
        #otherがProductでなければ常にfalse
        false
      end
  end
end

a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awesome film')
c = Product.new('A-0001', 'A great movie')

#商品コードが一致すればtrueになる
a == b #=> false
a == c #=> true

#Product以外の比較はfalse
a == 1   #=> false
a == 'a'  #=> false
