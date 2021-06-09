Array.include?(Enumerable)  #=> true
Hash.include?(Enumerable)  #=> true
Range.include?(Enumerable)  #=> true

#Enumerableモジュールには数多くのメソッドが定義されています。代表的なメソッドは
#map select find count
#Enumerableモジュールをincludeしているクラスであれば、上のメソッドはいずれも呼び出すことが可能です。
#m配列、ハッシュ、範囲でmapメソッドを使う
[1, 2, 3].map { |n| n * 10 }     #=>[10, 20, 30]
{ a: 1, b: 2, c: 3 }.map { |k, v| [k, v * 10]} #=> [[:a, 10],[:b, 20],[:c, 30]]
(1..3).map { |n| n * 10 }    #=>[10, 20, 30]

#配列、ハッシュ、範囲でcountメソッドを使う
[1, 2, 3].count    #=>3
{ a: 1, b: 2, c: 3 }.count  #=>3
(1..3).count      #=>3
