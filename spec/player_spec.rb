require "player"

describe Player do
  subject(:max) { Player.new("Max") }
  # subject(:serena) { Player.new("Serena") }

  describe "#name" do
    it "returns its name" do
      expect(max.name).to eq("Max")
    end
  end

  describe "#lose" do
    it 'starts not losing' do
      expect(max.lose).to eq false
    end

    it 'Is still not losing' do
      9.times { max.receive_attack }
      expect(max.lose).to eq false
    end

    it 'loses' do
      10.times { max.receive_attack }
      expect(max.lose).to eq true
    end
  end 
end
