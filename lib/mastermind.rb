class Mastermind

  def run_game
    self.game_intro
    self.interpret_input
    # puts gets.chomp
  end

  def game_intro
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    puts ">"
  end

  def interpret_input
    input = gets.chomp
    if input == "q" || input == "quit"
      exit
    elsif input == "p" || input == "play"
      puts "I have generated a beginner sequence with four elements made up of: (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
      What's your guess?"
      input == gets.chomp
    elsif input == "i" || input == "instructions"
      puts "Guess the secret sequence of 4 colors! Once you make your guess, we'll tell you
      how many you've guessed correctly and how many are in the correct position. Guess
      until you've idetified the correct sequence."
      puts "Are you ready to (p)lay, or (q)uit?"
      input = gets.chomp
    else
      run_game
    end
  end



end



mastermind = Mastermind.new
mastermind.run_game
mastermind.interpret_input
