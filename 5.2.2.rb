currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key, value|#key valueで２個の引数になっていることに注意！！
  puts "#{key} : #{value}"
end
#=> japan : yen
#=> us : dollar
#=> india : rupee

#ブロック引数を一つにするとキーと値が配列に格納されます
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
