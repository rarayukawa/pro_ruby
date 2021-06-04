class User
  #weightは外部に公開しない
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  #自分がother_userより重い場合はtrue
  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
#AliceはBobのWeightを取得できない
alice.heavier_than?(bob)
#=> NoMethodError...

#外部には公開したくないが、同じクラスやサブクラスの中であればレシーバ付きで呼び出せるようにしたい、という時に登場するのがproductedメソッドです。
class User
  #weightは外部に公開しない
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  #自分がother_userより重い場合はtrue
  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected

  #protectedメソッドなのでおなしクラスかサブクラスであればレシーバ付きで呼び出せる
  def weight
    @weight
  end
end
alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

#同じクラスのインスタンスメソッドないであればweightが呼び出せる
alice.heavier_than?(bob)  #=> false
bob.heavier_than?(alice)  #=> true

#クラスの外ではweightは呼び出せない
alice.weight  #=> NoMethodError.....
