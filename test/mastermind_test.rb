require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MastermindTest < Minitest::Test

  def test_it_can_interpret_input
    mastermind = Mastermind.new

    assert_equal "q", mastermind.interpret_input
  end


end
