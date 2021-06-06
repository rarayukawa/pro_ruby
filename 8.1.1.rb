class Team
  #配列をfreezeして要素の追加や削除を禁止する
  COUNTRIES = ['japan', 'US', 'India'].freeze
end

class Team
  COUNTRIES - deep_freeze(['japan', 'US', 'India'])
end
#配列自身と配列の全要素がfreezeされている
Team::COUNTRIES.frozen?  #=> true
Team::COUNTRIES.all? { |country| country.frozen? }  #=>true

class Bank
  CURRENCIES = deep_freeze({ 'japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
#ハッシュ自身とハッシュの全要素（キーと値）がfreezeされている
Bank::CURRENCIES.frozen?  #=> true
Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }  #=> true

