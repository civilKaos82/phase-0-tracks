# game class

class WordGame
  attr_reader :guess_count
  attr_reader :is_over
  attr_accessor :secret_word

  def initialize
    @secret_word = ""
    @guess_count = 0
    @is_over = false
  end

  def word_input=(user_input)
    @secret_word = user_input
  end

  def array_maker
    @secret_array = @secret_word.split('')
    @not_secret_array = []
    @guess_count = @secret_array.length - 1.
    @secret_array.length.times do |x|
      @not_secret_array.push("-")
    end
  end




  def check_cup(index)
  	@guess_count += 1
  	if @cups[index] == "ball"
  		@is_over = true
  	else
  		false
  	end
  end
end

# user interface

puts "Welcome to the Cup Game!"
game = CupGame.new

puts "Shuffling cups ..."
game.shuffle

while !game.is_over
  puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
  guess = gets.chomp.to_i
  if !game.check_cup(guess - 1)
  	puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"
