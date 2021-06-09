#Comparableモジュールは比較演算を可能にする
2 <=> 1  #=>1
2 <=> 2   #=>0
1 <=> 2   #=>-1
2 <=> 'abc'  #=> nil

'xyz' <=> 'abc' #=> 1
'abc' <=> 'abc' #=>0
'abc' <=> 'xyz'  #=>-1
'abc' <=> 123 #=>nil

#文字列や数値はComparableモジュールもincludeしているので、比較演算子を使って大小関係を適正に判断できる
2 > 1  #=>true
2 <= 1 #=>false
2 == 1 #=>false

#Comparableモジュールを独自のクラスにincludeして使うこともできる
class Tempo
  include Comparable

  attr_reader :bpm
  #bpmはBeats Per Minuteの略で音楽の速さを表す単位
  def initialize(bpm)
    @bpm = bpm
  end

  #<=>はComparableモジュールで使われる演算子（メソッド）
  def <=>(other)
    if other.is_a?(Tempo)
      #bpm同志を<=>で比較した結果を返す
      bpm <=> other.bpm
    else
      #比較できない場合はnil返す
      nil
    end
  end

  #irbで結果を見やすくするためにinspect使ってメソッドをオーバーライド
  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)   #=> 120bpm
t_180 = Tempo.new(180)  #=>180bpm
t_120 > t_180  #=>false
t_120 <= t_180  #=> true
t_120 == t_180  #=> false
