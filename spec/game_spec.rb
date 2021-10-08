require "game"

describe Game do
  let(:max) { double :player }
  let(:serena) { double :player }
  subject(:game) { Game.new(max, serena) }

  describe ".attack" do
    it "reduces the victims HP by 10" do
      expect(serena).to receive(:receive_attack)
      game.attack(serena)
    end
  end

  describe "#player_1" do
    it "displays player one" do
      expect(game.player_1).to eq(max)
    end
  end

  describe "#player_2" do
    it "displays player two" do
      expect(game.player_2).to eq(serena)
    end
  end
end
