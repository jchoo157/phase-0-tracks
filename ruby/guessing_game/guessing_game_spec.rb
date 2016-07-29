require_relative 'guessing_game'

describe GuessingGame do
  let(:game) { GuessingGame.new }

  describe "#initialize" do
    it "has turns set to 0" do
      expect(game.turns).to eq(0)
    end
  end

  describe "#turns" do
    it "can be set to any number" do
      expect(game.turns = 5).to eq(5)
      expect(game.turns = 30).to eq(30)
      expect(game.turns += 1).to eq(31)
      expect(game.turns -=1).to eq(30)
    end
  end

  describe "#convert_word" do
    it "converts each letter of a word to _" do
      expect(game.convert_word("hello")).to eq(['_', '_', '_', '_', '_'])
    end
  end

  describe "#display" do
    it "joins an array together into a string to display for user" do
      expect(game.display(game.convert_word("hello"))).to eq('_ _ _ _ _')
      expect(game.display(['a', 'n', 't'])).to eq('a n t')
    end
  end

  describe "#winner" do
    it "checks if all the letters have been guessed" do
      expect(game.winner(['c', 'l', 'o', 'u', 'd'])).to be(true)
      expect(game.winner(['_', 'o', '_'])).to be(false)
    end
  end
end