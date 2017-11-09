class Mastermind

  def initialize
    @input = ""
  end

  def game_intro
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    puts ">"
  end

  def call
    puts self.game_intro
    until finished?
      self.interpret_input
    end
  end

  def interpret_input
    @input = gets.chomp
    if finished?
      exit
    elsif @input == "p" || @input == "play"
      puts "I have generated a beginner sequence with four elements made up of: (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
      What's your guess?"
      @game = Game.new(@input)
      @game.play
    elsif @input == "i" || @input == "instructions"
      puts "Guess the secret sequence of 4 colors! Once you make your guess, we'll tell you
      how many you've guessed correctly and how many are in the correct position. Guess
      until you've idetified the correct sequence."
      puts "Are you ready to (p)lay, or (q)uit?"
    end
  end

  def finished?
    @input == "q" || @input == "quit"
  end


end

mastermind = Mastermind.new
mastermind.call
