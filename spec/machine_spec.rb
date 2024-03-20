require "rspec"
require "machine"

describe Machine do
  let(:plugboard) { Plugboard.new(connections: "AB ND") }
  let(:machine) { Machine.new(plugboard:) }
  let(:message) { "The quick brown fox jumps over the lazy dog." }
  let(:encrypted_message) { "THE QUICK AROWD FOX JUMPS OVER THE LBZY NOG." }

  describe ".convert" do
    it "encrypts and decrypts correctly" do
      expect(machine.convert(message)).to eq(encrypted_message)
      expect(machine.convert(encrypted_message)).to eq(message.upcase)
    end

    it "ignores non-alphabetic characters and is case insensitive" do
      expect(machine.convert("The dog, the cat and the rat.")).to eq("THE NOG, THE CBT BDN THE RBT.")
    end
  end
end
