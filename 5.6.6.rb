def buy_burger(options = {}, menu)
puts options
end

buy_burger({'drink' => true, 'potato' => false}, 'fish')

#()ありのメソッド呼び出し
puts('Hello')
#()なしのメソッド呼び出し
puts 'Hello'

buy_burger {'drink' => true, 'potato' => false}, 'fish'
#=> SyntaxError.......

#第一引数にハッシュの{}がくる場合は()を省略できない
buy_burger({'drink' => true, 'potato' => false}, 'fish')

def buy_burger(menu, options = {})
puts options
end

#第二引数以降にハッシュが来る場合は、()を省略してもエラーにならない
buy_burger 'fish', {'drink' => true, 'potato' => false}

#この場合、そもそもハッシュが最後の引数なので、{}を省略することもできる
buy_burger 'fish', 'drink' => true, 'potato' => false