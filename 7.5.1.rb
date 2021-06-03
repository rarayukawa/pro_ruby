class User
  attr_accessor :name
    
  def initialize(name)
    @name = name
  end

  def rename_to_bob
    #selfなしでname=メソッおを呼ぶ
    name = 'Bob'
  end

  def rename_to_carol
    #self付きでname=メソッドを呼ぶ
    self.name = 'Carol'
  end

  def rename_to_dave
    #直接インスタンス変数を書き換える
    @name = 'Dave'
  end
end
user = User.new('Alice')

#Bobにリネームできてない！
user.rename_to_bob
user.name #=> "Alice"

#Carolにリネーム
user.rename_to_caril
user.name #=> "Carol"

#Daveにリネーム
user.renama_to_dave
user.name #=> "Dave"


def rename_to_bob
  #メソッド内でセッターメソッドを呼び出す場合はselfを必ずつける！！
  self.name = 'Bob'
end
#セッターメソッドの呼び出し時のselfのつけ忘れには注意！！！！！