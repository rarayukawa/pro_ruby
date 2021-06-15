class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

class Second
  def initialize(digits)
    @digits = digits
  end
end

#二塁手のAliceを作成したい（が、区別できない
Second.new('Alice, 13')

#時計の13秒を作成したい（が、、区別できない
Second.new(13)

module Baseball
  #これはBaseballモジュールに属するSecondクラス
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  #Clockモジュールに属する Secondクラス
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end


#二塁手のAliceを作成（区別可能
Baseball::Second.new('Alice, 13')

#時計の13秒を作成（区別できる
Clock::Second.new(13)