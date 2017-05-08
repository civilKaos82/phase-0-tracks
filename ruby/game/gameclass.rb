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
