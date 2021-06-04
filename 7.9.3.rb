#グローバル変数の宣言と値の代入
$program_name = 'Awesome program'

#グローバル変数に依存するクラス
class Program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end

#$program_nameにはすでに値が代入されている
Program.name  #=>"Awesome program"

program = Program.new('Super program')
program.name   #=>"Super program"

#Program.newのタイミングで＄program_nameが"Super program"に変更される
Program.name  #=>"Super program"
$program_name #=>"Super program"


#グローバル変数の乱用は理解しづらいプログラムの原因になるので特別な理由がない限り、グローバル変数に依存するようなプログラムを書くことは避けるべき
