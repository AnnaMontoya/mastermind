require './lib/board'

class BoardTest < Minitest::Test

  def test_board_generation_generates_four
    board = Board.new
    assert_equal 4,board.layout.size
  end


end
