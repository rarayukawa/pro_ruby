def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greeting 　　　　　#=> "こんにちは"
greeting('us') 　#=> "hello"

#デフォルト値ありとなしを混合させることも可能
def default_args(a, b, c =, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
default_args(1, 2)          #=> "a=1, b=2, c=0, d=0"
default_args(1, 2, 3)       #=> "a=1, b=2, c=3, d=0"
default_args(1, 2, 3, 4)    #=> "a=1, b=2, c=3, d=4"

#デフォルト値は動的に変わる値や他のメゾットの戻り値を指定したりすることもできる

#システムの日時や他のメゾットの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end