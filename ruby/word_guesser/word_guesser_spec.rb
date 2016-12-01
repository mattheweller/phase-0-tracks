require_relative 'word_guesser'

describe WordGusser do
  let(:word_guesser) { WordGusser.new("game") }

  it "stores a guess" do
    expect(word_guesser.guess_letter_at(0, "g")).to eq "g"
  end

  it "stores the secret word" do
    expect(word_guesser.secret_word).to eq "game"
  end

  it "" do
    #expect(word_guesser.guess("g")).to eq "g"
  end

  it "" do
    #expect(word_guesser.guess("g")).to eq "g"
  end

end


#tests:
guess counter
guess counter doesn't increment when already guessed letter guessed
display equals array.length of secret word
display update returns
Guesses left counts down to one, then prints taunting message
correct guess flips the value of is_over, prints the winning message, showing the secret word and exits the game
