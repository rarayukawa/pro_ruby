class User
  private

  #クラスメソッドprivateもメソッドもなる？
    def self.hello
      'Hello!'
    end
  end

  #クラスメソッドはprivateメソッドにならない！
  User.hello  #=> "Hello!"



  class User
    class << self
      #class << selfの構文ならクラスメソッドでもprivateが機能する
      private
      
      def hello
        'Hello!'
      end
    end
  end
  User.hello  #=> NoMethodError.....