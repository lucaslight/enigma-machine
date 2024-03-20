require "rspec"
require "enigma"

describe Enigma do
  let(:plugboard) { "ab ba gj op ew" }
  let(:string) { "The quick brown fox jumps over the lazy dog." }
  let(:encrypted_string) { "THW QUICK ARPEN FPX GUMOS PVWR THW LBZY DPJ." }
  let(:rotors) { "ABC" }
  let(:reflector) { Reflector.new(mapping: Reflector::Constants::Mappings::B) }
  let(:subject) { Enigma.new(plugboard:, string:, rotors:) }

  it "encrypts correctly" do
    expect(subject.encrypt).to eq(encrypted_string)
  end
end
