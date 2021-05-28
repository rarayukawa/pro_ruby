foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか？ => "
  #sumpleは配列からランダムに１要素を取得するメソッド
  answer = ['はい', 'いいえ'].sample
  puts answer

  #はいと答えなければもう一度聞き直す
  redo unless answer == 'はい'
end

#意図せず無限ループを作る可能性があるのでやり直しの回数を制限する
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ => "
  #わざと「いいえ」しか答えないようにする
  answer = 'いいえ'
  puts answer

  count += 1
  #やり直しは２回までにする
  redo if answer != 'はい' && count < 2

  #カウントをリセット
  count = 0
end