#シンボルの代表的な使用例はハッシュのキー。文字列よりも高速に値を取り出すことができます。
#文字列をハッシュのキーにする
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
#文字列を使って値を取り出す
currencies['japan'] #=> "yen"

#シンボルをハッシュのキーにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
#シンボルを使って値を取り出す（文字列より高速）
currencies[:japan] #=> "yen"
#