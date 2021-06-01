text = '私の誕生日は1977年7月17日です'

#＝〜演算子などを使うと、マッチした結果をRegexp.last_matchで取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

#Matchオブジェクトを取得する
Regexp.last_match      #=> #<MatchData "1977年7月17日" a:"1997" 2:"7" 3:"17">

#マッチした部分全体を取得する
Regexp.last_match(0)  #=> "1977年7月17日"

#一番め〜３番目のキャプチャを取得する
Regexp.last_match(1)  #=> "1997"
Regexp.last_match(2)   #=>"7"
Regexp.last_match(3)   #=> "17"

#最後のキャプチャ文字列を取得する
Regexp.last_match(-1)  #=> "17"