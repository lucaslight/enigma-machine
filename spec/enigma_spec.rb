require "rspec"
require "enigma"

describe Enigma do
  let(:plugboard) { "ab ba gj op pg jo" }
  let(:string) { "The cat and the dog are BFFs." }
  let(:encrypted_string) { "THE CBT BND THE DJP BRE AFFS." }
  let(:rotors) { "ABC" }
  let(:reflector) { Reflector.new(mapping: Reflector::Constants::Mappings::B) }
  let(:subject) { Enigma.new(plugboard:, string:, rotors:) }

  it "encrypts correctly" do
    expect(subject.encrypt).to eq(encrypted_string)
  end
end
