currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.to_a #=> [[:japan, "yen"], [:us, "dllar"], [:india "rupee"]]

array = [[:japan, "yen"], [:us, "dllar"], [:india "rupee"]]
array.to_h #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

#ハッシュとして解析不能な配列に対してto_hメソッドを呼ぶとエラーになる
array = [1, 2, 3, 4]
array.to_h #=> TypeError.......

#キーが重複した場合は最後の配列の要素がハッシュ値に採用される
#エラーの原因になるので、どうしてもの場合以外はキーはユニークにしておく
array = [[:japan, "yen"], [:japan, "円"]]
array.to_ha#=>{:japan=>円}