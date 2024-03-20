require "rspec"
require "rotor"

describe Rotor do
  let(:rotor) { Rotor.new(mappings: Constants::Mappings::A) }

  it "rotates correctly" do
    expect(rotor.rotate).to eq(rotor)
    expect(rotor.rotate).to eq(rotor)
  end

  it "resets correctly" do
    rotor.rotate
    rotor.reset!
    expect(rotor.rotate).to eq(rotor)
  end

  it "turns over correctly" do
    26.times { rotor.rotate }
    expect(rotor.turnover?).to be true
  end

  it "forwards correctly" do
    expect(rotor.forward("A")).to eq("E")
    rotor.rotate
    expect(rotor.forward("A")).to eq("K")
  end

  it "backwards correctly" do
    expect(rotor.backward("E")).to eq("A")
    rotor.rotate
    expect(rotor.backward("K")).to eq("A")
  end
end
