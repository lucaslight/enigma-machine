require "machine"

class Enigma
  def initialize(plugboard:, string:, rotors:)
    @plugboard = plugboard
    @string = string
    @rotors = rotors
  end

  def encrypt
    machine.convert(@string)
  end

  private

  def machine
    Machine.new(
      plugboard: Plugboard.new(connections: @plugboard),
      rotors: @rotors,
      reflector: @reflector
    )
  end
end
