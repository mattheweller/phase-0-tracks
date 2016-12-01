# game class

class WordGuesser
  attr_accessor :secret_word, :guesses, :guess_count, :is_over

  def initialize(secret_word)
    @secret_word = secret_word.split("")
    @guesses = []
    @guess_count = (@secret_word.length + 3)
    @is_over = false
  end

  def check_guess(guess)
    @secret_word.include?(guess)
  end

  def dasherize
    @secret_word.map do |letter|
      letter = "_"
    end
  end
end

# UI

puts "Welcome to the Word Guessing game!"
puts "Player 1, enter your Secret Word!"
word = gets.chomp
game = WordGuesser.new(word)
status = game.dasherize

puts "Secret Word: #{status.join(" ")}"

while !game.is_over
  puts "Player 2, you have #{game.guess_count} guesses left! Guess a letter!"
  letter = gets.chomp
  game.secret_word.each_with_index do |secret_letter, dash|
    status[dash] = letter if secret_letter == letter
  end

  puts "Secret Word: #{status.join(" ")}"
  game.guess_count -= 1

  unless game.guesses.include?(letter) || !game.check_guess(letter)
    game.guesses << letter
  end

  if game.secret_word.uniq.sort == game.guesses.uniq.sort
    game.is_over = true
    puts "Player 2 Wins!! :D"
  elsif game.guess_count == 0
    puts "Player 2 Loses!! :P"
    break
  end
end





#notes
# guess = "g"
# guess_array = ["g", "a", "m", "e"]
# guess_array.include?(guess) #=> true


# word = "gamea".split("")
# display = "12345".split("")
# guess = "a"
# word.each_with_index do |ele, i|
#   display[i] = guess if ele == guess
# end
# p display.join(" ")


# one = "qaaweerty".split("")
# two = "ytrewaaaq".split("")
#
# one.uniq.sort == two.uniq.sort
