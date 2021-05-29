#シンボルがハッシュのキーになる場合、 => を使わずに”シンボル：　値”でハッシュを作成できる。
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies[:us]
 #=> 'dollar'

#キーの値もシンボルの場合は
{ japan: :yen, us: :dollar, india: :rupee }
#↑のハッシュは↓のハッシュと全く同じ
{ japan: => :yen, us: => :dollar, india: => :rupee }