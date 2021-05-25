numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }
even_numbers.each


numbers = [1, 2, 3, 4, 5, 6]
#3倍の倍率を除外する（３の倍数以外を集める）
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
non_multiples_of_three

numbers = [1, 2, 3, 4]
#ブロックの戻り値が最初に真になった要素を返す
even_number = numbers.find { |n| n.even? }
even_number

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
sum

#上のコードはinjectメゾットを使うと次のように書きます
numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
sum