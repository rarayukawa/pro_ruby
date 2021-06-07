require 'minitest/autorun'
require './bank'
require './team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze
    #配列の値は正しいか？
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    #配列自身が　freezeされているか？
    assert Team::COUNTRIES .frozen?
    #配列の要素が全てfreezeされているか？
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end
end
