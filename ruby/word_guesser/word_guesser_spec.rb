require_relative 'word_guesser'

describe WordGuesser do
  let(:word_guesser) { WordGuesser.new("game") }

  it "stores the secret word as an array" do
    expect(word_guesser.secret_word).to eq ["g", "a", "m", "e"]
  end

  it "stores the guesses in an array" do
    expect(word_guesser.guesses).to eq []
  end

  it "Gives you 3 more guesses than the length of the secret word" do
    expect(word_guesser.guess_count).to eq 7
  end

  it "initializes is_over as false" do
    expect(word_guesser.is_over).to eq false
  end

  it "Checks guess and returns a boolean" do
    expect(word_guesser.check_guess("g")).to eq true
  end

  it "Checks guess and returns a boolean" do
    expect(word_guesser.check_guess("q")).to eq false
  end

  it "Converts the secret word into space separated underscores" do
    expect(word_guesser.dasherize).to eq ["_", "_", "_", "_"]
  end
end
