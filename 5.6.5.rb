#optionsは任意のハッシュを受け取る
def buy_burger(menu, options = {})
puts options
end

#ハッシュを第二引数として渡す
buy_burger('fish', {'drink' => true, 'potato' => false}) #=> {"drink"=>true, "potato"=>false}

#hハッシュリテラルの{}を省略してメソッドを呼び出す
buy_burger('fish', 'drink' => true, 'potato' => false) #=> {"drink"=>true, "potato"=>false}

#menuとoptionの順番を入れ替える
def buy_burger(options = {}, menu)
  puts options
end

#optionsは最後n引数では兄ので、ハッシュリテラルの{}は省略できない
by_burger('drink' => true, 'potato' => false, 'fish')
#=> SyntaxError...

#最後の引数でなければ{}をつけてハッシュを作成する
buy_burger({'drink' => true, 'potato' => false}, 'fish') #=> {"drink"=>true, "potato"=>false}