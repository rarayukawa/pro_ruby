def display_name(object)
  puts "Name is <<#{object.name}>>"
end

class User
  def name
    'Alice'
  end
end

class Product
  def name
    'A great movie'
  end
end
 #UserクラスとProductクラスはお互いに無関係なクラスだが、display_nameメソッドは何も気にしない
 user = User.new
 display_name(user)    #=> Name is <<Alice>>

 product = Product.new
 display_name(product)    #=> Name is <<A great movie>>

 #オブジェクトのクラスが何であろうとそのメソッドが呼び出せればよしとするプログラミングスタイルのことを「ダックタイピング」という
 #「もしもそれがアヒルのように歩き、アヒルのように泣くなら、それはアヒルである」という言葉に由来するプログラミング用語です

 class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    #stock?メソッドはサブクラスで必ず実装してもらう想定
    stock = stock? ? 'あり' : 'なし'
    "商品名: #{@name} 価格: #{@price}円　 在庫: #{stock}"
  end
end

class DVD < Product
  #在庫があればtrueを返す
  def stock?
    #本当はデータベースに問い合わせるなどの処理が必要だがここでは省略
    true
  end

  def stock?
    #「サブクラスでstock?メソッドを実装すること」というメッセージとともにエラーを発生させる
    raise 'Must implement stock? in subclass.'
  end
end

product = Product.new('A great film', 1000)
#スーパークラスはstock?メソッドを持たないのでエラーが起こる
product.display_text   #=>RuntimeError.....Must implement stock? in subclass.

dvd = DVD.new('An awesome film', 3000)
#サブクラスはstock?メソッドを持つのでエラーが起きない
dvd.display_text   #=>"商品名: An awesome film 価格:3000円 在庫:あり"