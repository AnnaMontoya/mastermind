require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test

  def test_correct_colors_works
    assert_equal 0, Checker.correct_colors(["r", "g", "b", "y"],["r", "g", "b", "y"])
    assert_equal 1, Checker.correct_colors(["r", "r", "g", "g"],["b", "y", "b", "b"])
    assert_equal 1, Checker.correct_colors(["r", "r", "y", "y"],["r", "b", "b", "r"])
  end

end
