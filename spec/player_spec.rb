require "player"

describe Player do

  subject(:max) { Player.new("Max") }
  subject(:serena) { Player.new("Serena") }

  context ".name" do
    it "returns its name" do
      expect(max.name).to eq("Max")
    end
  end

  describe ".attack" do 
    it "reduces the victims HP by 10" do 
      expect{ max.attack(serena) }.to change { serena.hp }.by(-10)
    end 
  end 
end
