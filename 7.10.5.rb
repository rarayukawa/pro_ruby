#equal?メソッドはobject_idが等しい時にtrueを返す
#全く同じインスタンスかどうかを判断する場合に使う
a = 'abc'
b = 'abc'
a.equal?(b) #=> false

c = a
a.equal?(c)   #=> true

# ==はオブジェクトの内容が人しかどうか判断する
1 == 1.0 #=> true

#eql?メソッドはハッシュのキーとして２つのオブジェクトが等しいかどうかを判断します
#ハッシュ上では1と1.0は別々のキーとして扱われる
h = { 1 => 'Integer', 1.0 => 'Float'}
h[1]   #=>"Integer"
h[1.0]  #=> "Float"
#異なるキーとして扱われるのは、eql?メソッドで比較した時にfalseになるため

#===は主にcase文のwhen節で使われる
text = '03-1234-5678'

case text
when /^\a{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番ンゴうです'
end
