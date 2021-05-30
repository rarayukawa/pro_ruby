string = 'apple'
symbol = :apple

#シンボルと文字列は別物なので互換性はない
string === symbol #=> false
string + symbol #=> TypeError.....

#to_symメソッドで文字列をシンボルに変換することができる
string = 'apple'
symbol = :apple
string.to_sym         #=> :apple
string.to_sym == symbol #=> true

#反対にシンボルを文字列に変換するにはto_sメソッドを使う
string = 'apple'
symbol = :apple

symbol.to_s
string == symbol.to_s
string + symbol.to_s #=>"appleapple"

#respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
'apple'.respond_to?('include?') #=>true
'apple',respond_to?(:include?) #=>true

'apple'.respond_to?('foo_bar')  #=> false
'apple'.respond_to?(:foo_bar)   #=>false