#for 変数　in　配列やハッシュ
# 繰り返し処理
#end

#配列の中身を順番に加算していく
number = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
sum #=> 10

#doを入れて１行で書くことも可能
sum = 0
for n in numbers do sum += n end
  sum #=> 10

#eachとforの違い
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
#ブロック引数やブロック内で作成した変数はブロックの外では山椒雨できない
n         #=> NameError:...
sum_value #=> NameError....

sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
#for文の中で作成された変数はfor文に外でも参照できる
n         #=> 4
sum_value #=> 40
