require_relative 'word_guesser'

describe WordGuesser do
  let(:word_guesser) { WordGuesser.new("game") }

  it "Checks guess and returns a boolean" do
    expect(word_guesser.check_guess("g")).to eq true
  end

  # it "stores the secret word" do
  #   expect(word_guesser.secret_word).to eq "game"
  # end
  #
  # it "" do
  #   #expect(word_guesser.guess("g")).to eq "g"
  # end
  #
  # it "" do
  #   #expect(word_guesser.guess("g")).to eq "g"
  # end

end
