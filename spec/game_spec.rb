require "game"

describe Game do
  subject(:game) { Game.new(:max, :serena) }
  let(:max) { double :player }
  let(:serena) { double :player }

  describe ".attack" do
    it "reduces the victims HP by 10" do
      expect(serena).to receive(:receive_attack)
      game.attack(serena)
    end
  end
end
