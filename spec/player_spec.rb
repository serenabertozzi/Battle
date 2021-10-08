require "player"

describe Player do
  subject(:max) { Player.new("Max") }
  subject(:serena) { Player.new("Serena") }

  context ".name" do
    it "returns its name" do
      expect(max.name).to eq("Max")
    end
  end
end
