require 'pry'

class Board
  COLORS = ["r", "g", "b", "y"]
  attr_reader :layout

  @layout = COLORS.map do
  binding.pry

end
