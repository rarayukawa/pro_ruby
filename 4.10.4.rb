numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  #偶数であれば中断して次の繰り返し処理に進む
  next if n.even?
  puts n
end

#一番内側のループだけが中断の対象になる点はberakと同じです
numbers = [1, 2, 3, 4, 5]
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  #while文の中でnextえお使う
  next if n.even?
  puts n
end

fruits = ['apple', 'melen', 'orange']
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
  numbers.each do |n|
    #繰り返し処理が入れ子になっている場合は、一番内側のループだけが中断される
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end
