s = 'Alice'
# Stringクラスはsplitメソッドを持つ
s.respond_to?(:split)   #=>true

#nameメソッドは持たない
s.respond_to?(:nae)    #=>false

def display_name(object)
  if object.respond_to?(:name)
    #nameメソッドが呼び出せる場合
    puts "Name is <<#{object.name}>>"
  else
    #nameメソッドを呼び出せない場合
    puts 'No name.'
  end
end
