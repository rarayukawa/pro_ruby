#不等号を使う場合
def liquid?(temperature)
  #０度以上１００度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

#範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)