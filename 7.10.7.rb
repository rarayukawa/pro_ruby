alice = 'I am Alice.'
bob = 'I am Bob.'

#aliceオブジェクトにだけ、shuffleメソッドを定義する
def alice.shuffle
  chars.shuffle.join
end

#aliceはshuffleメソッドを持つが、bobは持たない
alice.shuffle    #=>"m le a.icIA"
bob.shuffle      #=> NoMethoderror......

#数値やシンボルは得意メソッドを定義できません
n = 1
def n.foo
  'foo'
end
#=> TypeError.....

sym = :alice
def sym.bar
  'bar'
end
#=> TypeError....

alice = 'I am Alice.'
#aliceというオブジェクトに得意メソッドを追加するもう一つの方法
class << alice
  def shuffle
    chars.shuffle.join
  end
end
alice.shuffle  #=> " ci Ama.lIe"