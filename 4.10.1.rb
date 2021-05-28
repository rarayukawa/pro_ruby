#shuffleメゾットで配列の要素をランダムに並び替える
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  #5が出たら繰り返しを脱出する
  break if n == 5
end

#breakはeachメゾットやwhile文やuntil文、for文でも使用可
numbers = [1, 2, 3, 4, 5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end