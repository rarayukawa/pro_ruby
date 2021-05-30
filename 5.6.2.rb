#**をハッシュの前につけるとハッシュリテラル内で他のハッシュのキーと値と展開できる
h = { us: 'dollar', india: 'rupee' }
#変数hのキーと値を**で展開させる
{ japan: 'yen', **h } #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

#**を付けない場合はエラーになる
{ japan: 'yen', h }
#=> SyntaxError:.....

#**の代わりにmergeメソッドでも同じ結果になる
h = { us: 'dollar', india: 'rupee' }
{ japan: 'yen' }.merge(h) #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}