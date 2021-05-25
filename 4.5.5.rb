#範囲オブジェクトを配列に変換してから繰り返し処理を行う
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
sum


#範囲オブジェクトに対して直接eachメゾットを呼び出すことも可能
sum = 0
(1..4).each { |n| sum += n }
sum += 1


#stepメゾットを呼び出すと値を増やす間隔を指定できる
numbers = []
#一から１０まで２つ飛ばしで繰り返し処理を行う
(1..10).step(2) { |n| numbers << n }
numbers