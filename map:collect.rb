numbers = [1, 2, 3, 4]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
new_numbers

numbers = [1, 2, 3, 4, 5]
#ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.mao { |n| n * 10 }
new_numbers