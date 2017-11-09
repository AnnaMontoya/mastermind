require_relative 'mastermind'

class Game
  attr_reader :colors, :input

  def intiialize(input)
    @input             = input
    @colors            = ["r", "g", "b", "y"]
    @current_colors    = []
    @correct_colors    = 0
    @correct_positions = 0
  end

  def play
    self.randomize_colors
    self.check_input
    if mastermind.finished? == true
      exit
    else
      puts "#{input} has #{correct_colors} of the correct elements with #{correct_positions}in the correct positions
            You've taken 1 guess"
            #create guess counter
          end
        end

  def randomize_colors
    @current_colors = @colors.rand.rand(0..3)
  end

  def check_input
    @input.chars.each_with_index do |color, index|
       found_position = @current_colors.include?(color)
      if found_position == true
        @correct_colors += 1
      end
      if found_position == index
        correct_position += 1
      end
    end
  end

  def correct_length
    @input = gets.chomp
    if @input.length > 4
    puts "Your guess is longer than 4 letters. Please enter the first letter of each
    of the 4 colors you want to guess"
    else @input.length < 4
    puts "Your guess is shorter than 4 letters. Please enter the first letter of each
     of the 4 colors you want to guess"
    end
  end

  def win?
   @current_colors == @input.chars
  end
end
