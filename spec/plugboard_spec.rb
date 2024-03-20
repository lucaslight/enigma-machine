require "rspec"
require "plugboard"

describe Plugboard do
  let(:plugboard) { Plugboard.new(connections: "ab ND") }

  it "should process input correctly" do
    expect(plugboard.process("A")).to eq("B")
    expect(plugboard.process("B")).to eq("A")
    expect(plugboard.process("C")).to eq("C")
    expect(plugboard.process("N")).to eq("D")
    expect(plugboard.process("D")).to eq("N")
  end
end
