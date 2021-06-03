class User
  #ここから下で定義されtメソッドはprivate
  private

  def hello
    'Hello!'
  end
end

user = User.new  #=>privateメソッドなので外部から呼び出せない（エラー


class User
  def hello
    #nameメソッドはprivateなのでselfをつけるとエラーになる
    "Hello, I am #{self.name}."
  end

  private
  def name
    'Alice'
  end
end

user = User.new
user.hello #=> NOMethodError........


class User
  def hello
    #selfなしてnameメソッドを呼び出す
    "Hello, I am #{name}."
  end

  private
  def name
    'Alice'
  end
end

user = User.new
user.hello #=> "Hello, I am Alice."