#sizeメソッドを使うとハッシュの要素の個数を調べられる
a = { 'x' => 1, 'y' => 2, 'z' => 3 }
{}.size #=> 0
{ 'x' => 1, 'y' => 2, 'z' => 3 }.size #=> 3

#deleteメソッドを使うと指定したキーに対応する要素を削除する。
#戻り値は削除された要素の値。
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('japan') #=> "yen"
currencies #=> {'us' => 'dollar', 'india' => 'rupee' }

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
#削除しようとしたキーが見つからない時はnilが返る
currencies.delete('italy') #=> nil

#ブロックを渡すとキーが見つからない時の戻り値を作成できる
currencies.delete('italy') { |key| "not found: #{key}" }#=> "Not found: itaiy"