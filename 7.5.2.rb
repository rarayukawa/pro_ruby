class Foo
  #このputsはクラス定義の読み込み時に呼び出される
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
#=>クラス構文の直下のself: Foo

Foo.bar #≒> クラス内メソッドのself: Foo

foo = Foo.new
foo.baz #=> インスタンスメソッド内のself: #<Foo:0x007f9....