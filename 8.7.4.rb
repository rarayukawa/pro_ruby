#モジュールの特異メソッドとしてsqrt（平方根）メソッドを利用する
Math.sqrt(2)  #=>1.4142136....

class Calculator
  include Math

  def calc_sqrt(n)
    #ミックスインとしてMathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end

calculator = Calculator.new
calculator.calc_sqrt(2)  #=>1.4142136....

#またMathモジュールには自然対数の底を表すEと、円周率を表すIPいう定数が定義されています
Math::E  #=>2.71828....
Math::PI #=> 3.141592....
