#から文字であればtrue、そうでなければfalse
''.empty?
'abc'.empty?

#引数の文字列が含まれていればtrue、そうでなければfalse
'watch'.include?('at')
'watch'.include?('in')

#奇数ならtrue、偶数ならfalse
1.odd?
2.odd?

#偶数falseなら、奇数ならtrue
1.even?
2.even?

#オブジェクトがnilであればtrue、そうでなければfalse
nil.nil?
'abc'.nil?
1.nil?

#真偽値を返す目的のメゾットなら？で終わらせるようにしたほうが良い
#3の倍数なればtrue、そうでなければfalse
def multiple_of_three?(n)
  n % 3 == 0
end

puts multiple_of_three?(4)
puts multiple_of_three?(5)
puts multiple_of_three?(6)
puts multiple_of_three?(12)
puts multiple_of_three?(13)
puts multiple_of_three?(14)
puts multiple_of_three?(15)