#scanメソッドは引数で渡しは正規表現にマッチする部分を配列に入れて返します
'123 456 789' .scan(/\d+/) #=> ["123", "456", "789"]
#正規表現に（）があると、キャプチャされた部分が配列の配列になって返ってくる
'1977年71月7日　2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
#=>[["1997", "7", "17"], ["2016", "12", "31"]]

#グループ化はしたいがキャプチャはしたくない（マッチした全体を取得したい）という場合は（？：）というメタ文字を使う
'1977年71月7日　2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
#=> ["1977年71月7日","2016年12月31日"]
#より簡潔な正規表現
'1977年71月7日　2016年12月31日'.scan(/\d+年\d+月\d+日/)
#=> ["1977年71月7日","2016年12月31日"]



#[]に正規表現を渡すと、文字列から正規表現にマッチした部分を抜き出します
text = "郵便番号は123−4567です"
text[/\d{3}-\d{4}/]  #=> "123-4567"
#マッチする部分が複数ある場合は、最初にマッチした文字列が返ります
text = '123-4567 456-7890'
text[/\d{3}-\d{4}/]  #=> "123-4567"

#キャプチャを使うと第二引数で何番目のキャプチャを取得するか指定できます
text = '私の誕生日は1977年7月17日です'
#第二引数がないとマッチした部分全体がかえる
text[/(\d+)年(\d+)月(\d+)日/]  #=> "1997年7月17日"
#第二引数を指定して３番目のキャプチャを取得する
text[/(\d+)年(\d+)月(\d+)日/, 3]  #=>"17"

text = "誕生日は2888年2月22日"
#シンボルでキャプチャの名前を指定する
text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]  #=>"17"
#文字列でキャプチャの名前を指定する
text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 'day']  #=> "17"




#splitに正規表現を渡すと、マッチした文字列を区切り文字にして文字列を分解し、配列として返す
text = '123,456-789'

#文字列で区切り文字を指定する
text.split(',')  #=> ["123", "456-789"]
#正規表現を使ってカンマまたはハイフンを区切り文字に指定する
text.split(/,|-/)  #=> ["123", "456", "789"]