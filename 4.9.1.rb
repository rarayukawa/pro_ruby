sum= 0
#処理を５回繰り返す。nには0,1,2,4が入る。
5.times { |n| sum += n }
sum #=> 10

#不要であればブロック引数は省略も可。
sum = 0
#sumに１を加算する処理を５回繰り返す
5.times { sum += 1 }
sum #=> 5