dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: [10, 20], width: 0, i:
#=> length: [30, 40], width: 1, i:
#=> length: [50, 60], width: 2, i:

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
#一旦配列のまま受け取る
dimensions.each_with_index do |dimension, i|
  #配列から盾と横の値を取り出す
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#=> length: 30, width: 40, i: 1
#=> length: 50, width: 60, i: 2

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
#ブロック引数を（）で囲んで、配列の要素を別々の引数として受け取る
dimensons.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#=> length: 30, width: 40, i: 1
#=> length: 50, width: 60, i: 2