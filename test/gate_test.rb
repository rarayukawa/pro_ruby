require 'minitest/autorun'
require './gate'


class GateTest < Minitest::Test
  def test_gate
    #とりあえずGateオブジェクトが作れつことを確認す
    assert Gate.new
  end
end
