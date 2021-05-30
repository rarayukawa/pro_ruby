#キーがなければ'Hello'を返す
h = Hash.new('hello')
h[:foo] #=>'Hello'

h= Hash.new('hello')
a = h[:foo] #=>'Hello'
b = h[:bar] #=>'Hello'

#変数aと変数bは同一オブジェクト
a.equal?(b) #=>true

#変数aに破壊的な変更を適用すると、変数bの値も一緒に変わってしまう
a.upcase!
a#=>'HELLO'
b#=>'HELLO'

#ちなみにハッシュ地震はからのままになっている
h #=> {}

#キーが見つからない時はブロックがその都度実行され、ブロックの戻り値が初期値になる
h = Hash.new { 'hello' }
a = h[:foo] #=> "hello"
b = h[:bar] #=> "hello"

#変数aと変数bは異なるオブジェクト（ブロックの実行時に毎回新しい文字列が作成される）
a.equal?(b) #=> false

#変数aに破壊的な変更を適応しても変数bの値は変わらない
a.upcase!
a #=> "HELLO"
b #=> "hello"

#ハッシュはからのまま
h #=> {}

#初期値を返すだけでなく、ハッシュに指定されたキーと初期値を同時に設定する
h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo] #=> "hello"
h[:bar] #=> "hello"
#ハッシュにキーと値が追加されている
h #=> {:foo=>"hello", :bar=>"hello"}