#keyメソッドはハッシュのキーお配列として返します
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.keys #=> [:japan, :us, :india]

#valuesメソッドハッシュの値を配列として返します
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.values #=> ["yen", "dollar", "rupee"]

#has_key?メソッドはハッシュの中に指定されたキーが存在するかづか確認するメソッド
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.has_key?(:japan) #=> true
currencies.has_key?(:italy) #=> false