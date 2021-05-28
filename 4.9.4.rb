#while 条件式　（真であれば実行）
# りく返したい処理
#end

#配列が５つになるまで値をついかする
a = []
while a.size < 5
  a << 1
end
a #=> [1, 1, 1, 1, 1]

#修飾子としてwhile文を後ろに置く
a = []
a << 1 while a.size < 5
a #=> [1, 1, 1, 1, 1]

#どんな条件でも最低１回は実行したいという場合はbegin...endで囲んでからwhileを書く
a = []

while false
  #このコードは常に条件が偽になるので実行されない
  a << 1
end
a #=> []

#begin...endで囲むとどんな条件でも最低１回は実行される
begin
  << 1
end while false
a #=> [1]

#whileの反対で条件が偽である間、処理を繰り返すuntil文
#until 条件式　（偽であれば実行）
# 繰り返したい処理
#end
a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
a #=> [10, 20, 30]
