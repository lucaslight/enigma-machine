require "rspec"
require "reflector"

describe Reflector do
  let(:reflector) { Reflector.new }

  it "reflects input correctly" do
    expect(reflector.reflect("A")).to eq("Z")
    expect(reflector.reflect("Z")).to eq("A")
    expect(reflector.reflect("M")).to eq("N")
    expect(reflector.reflect("N")).to eq("M")
    expect(reflector.reflect("E")).to eq("V")
    expect(reflector.reflect("V")).to eq("E")
  end
end
