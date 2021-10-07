require "player"

describe Player do
  it "returns its name" do
    max = Player.new("Max")
    expect(max.name).to eq("Max")
  end
end
