class User
  #一旦publicメソッドとして定義する
  def foo
    'foo'
  end

  def bar
    'bar'
  end

  #fooとbarをprivateメソッドに変更する
  private :foo, :bar
  
  #bazはpublicメソッド
  def baz
    'baz'
  end
end

user = User.new
user.foo #=> NoMethodError...
user.bar #=> NoMethodError...
user.baz #=> "baz"