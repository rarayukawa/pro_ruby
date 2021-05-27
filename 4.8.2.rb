fruits = ['apple', 'orange', 'melon']
#mapとして処理しつつ、添字も受け取る
fruits.map.with_index { |fruits, i| "#{i}: #{fruits}" }

fruits = ['apple', 'orange', 'melon']
#名前に"a"を含み、　なおかつ添字が奇数である要素を削除する
fruits.delete_if.with_index { |fruits, i| fruit.include?('a') && i.odd? }
#=> ["apple", "melon"]

fruits = ['apple', 'orange', 'melon']
#ブロックなしでメゾットを呼ぶとEnumeratorオブジェクトが返る。
#よってwith_indexメゾットが呼び出せる
fruits.each      #=> #<Enumerator: ["apple", "orange", "melon"]:each>
fruits.map       #=> #<Enumerator: ["apple", "orange", "melon"]:map>
fruits.delete_if #=> #<Enumerator: ["apple", "orange", "melon"]:delete_if>