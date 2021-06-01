#/\d{3}-\d{4}/と書いた場合と同じ
Regexp.new('\d{3}-\d{4}')

#スラッシュで囲むとスラッシュをエスケープする必要がある
/http:\/\/example\.com/
#%rを使うとスラッシュをエスケープしなくて良い
%r!thhp://example\.com!
#!でなく{}を区切り文字にする
%r{http://example\.com}
