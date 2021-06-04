class Product
  NAME = 'A product'
  SOME_NAMES = ['Foo', 'Bar', 'Baz']
  SOME_PRICE = { 'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000 }
end

#文字列を破壊的に大文字に変更する
Product::NAME.upcase!
Product::NAME #=> "A PRODUCT"

#配列に新しい要素を追加する
Product::SOME_NAMES << 'Hoge'
Product::SOME_NAMESNAMES #=> ["foo", "Bar", "Baz", "Hoge"]

#ハッシュに新しいキーと値を追加する
Product::SOME_PRICE[ 'Hoge'] = 4000
Product::SOME_PRICE #=>{"Foo"=>1000, "Bar"=>2000, "Baz"=>3000, "Hoge"=>4000}



lass Product
  SOME_NAMES = ['Foo', 'Bar', 'Baz']

  def self.names_without_foo(names - SOME_NAMES)
    #namesがデフォルト値だと、以下のコードは定数のSOME_NAMESを破壊的に変更していることになる
    names.delete('Foo')
    names
  end
end

Product.names_without_foo #=> ["Bar", "Baz"]
#定数の中身が変わる
Product::SOME_NAMES

class Product
  #配列を凍結する
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze

  def self.names_without_foo(names = SOME_NAMES)
    #freezeしている配列に対しては破壊的な変更はできない
    names.delete('Foo')
    names
  end
end

#エラーが発生するのでうっかり定数の値が変更される事故が防げる
Product.names_without_foo #=> RuntimeError.....

class Product
  #配列はfreezeされるが中身の文字列はfreezeされない
  SOME_NAMES = ['foo', 'Bar', 'Baz'].freeze
end

#１番目の要素を破壊的に大文字に変更する
Product::SOME_NAMES[0].upcase!
#１番目の要素の値が変わってしまう
Product::SOME_NAMES  #=> ["FOO", "Bar", "Baz"]

#これを防ぐために各要素もfreezeする必要がある
class Product
  #mapメソッドで各要素をfreezeし、最後にmapメソッドの戻り値の配列をfreezeする
  SOME_NAMES = ['Foo', 'BAr', 'Baz'].map(&:freeze).freeze
end
Product::SOME_NAMES[0].upcase!  #=> RuntimeError...

#一方、イミュータブルなオブジェクトはfreezeする必要がない
class Product
  #数値やシンボル、true/falseはfreeze不要　（してもいいが意味がない）
  SOME_VALUE = 0
  SOME_TYPE = :foo
  SOME_FLAG = true
end