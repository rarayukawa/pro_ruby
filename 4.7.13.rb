#要素が５つで'default'を初期値とする配列を作成する
a = Array.new(5, 'default')
a #=> ["default", "default", "default", "default", "default"]

#１番目の要素を取得する
str = a[0]
str #=> "default"

#１番目の要素を大文字に変換する(破壊的変更)
str.upcase!
str #=> "DEFAULT"

#配列の要素全てが大文字に変わってしまう
a　#=>["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

#ブロックを使って、ブロックの戻り値を初期値とする
a = Array.new(5) { 'default' }
a #=> ["default", "default", "default", "default", "default"]

#１番目の要素を取得する
str = a[0]
str #=> "default"

#１番目の要素を大文字に変換する(破壊的変更)
str.upcase!
str #=> "DEFAULT"

#１番目の要素だけが大文字になり、他は変わらない
a #=>["DEFAULT", "default", "default", "default", "default"]


#同じ値で同一のオブジェクト
a = Array.new(5, 'default')

#同じ値で異なるプロジェクト
a = Array.new(5) { 'default' }