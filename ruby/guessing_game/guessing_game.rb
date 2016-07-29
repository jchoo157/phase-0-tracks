# Game CLASS with all the methods the game can do
class GuessingGame
  attr_accessor :turns, :secret_word
  # INITIALIZE the game with 0 turns.  Turns will be set using a words length.
  def initialize
    @turns = 0
  end

  # Convert each letter of a word into _ and set into an ARRAY
  def convert_word(secret_word)
    ['_'] * secret_word.length
  end

  # Allow the user to see what has and hasn't been guessed
  def display(array)
    array.join(' ')
  end

  # Determines if all letters have been guessed
  def winner(board)
    !board.include?('_')
  end

end

# user interface

if __FILE__ == $PROGRAM_NAME

  puts "Welcome to the Guessing Game!"
  game = GuessingGame.new

  puts "Please enter a secret word"
  word = gets.chomp

  game.turns = word.length

  linify_word = game.convert_word(word)

  until game.winner(linify_word)
    puts "Guess a letter! | Turns: #{game.turns}"
    puts game.display(linify_word)
    guess = gets.chomp

    # IF the secret word includes the guess AND it hasn't been guessed yet
    # it will grab the INDEXES of the letter and update the board accordingly
    if word.include?(guess) && !linify_word.include?(guess)
      index_letters = []
      word.split('').each_with_index do |letter, i|
        if letter == guess
  		  index_letters << i
        end
      end
      index_letters.each { |i| linify_word[i] = guess }
    elsif !word.include?(guess)
      puts "Incorrect guess! | Turns: #{game.turns -= 1}"
      if game.turns == 0
        puts "No more turns! YOU LOSE!"
        puts "The secret word was #{word}"
   	    break
   	  end
    elsif linify_word.include?(guess)
  	  puts "You already guessed that letter! Turns: #{game.turns}"
    end
  end


  if game.winner(linify_word)
    puts game.display(linify_word)
    puts "CONGRATULATIONS! You guessed the secret word with #{game.turns} turns left!"
  end

end









