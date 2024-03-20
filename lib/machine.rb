require "rotor"
require "reflector"
require "plugboard"
require "constants"

class Machine
  include Constants

  def initialize(reflector: Reflector.new, plugboard: Plugboard.new, rotors: "ABC")
    @reflector = reflector
    @plugboard = plugboard
    @rotors = rotors.upcase.split("").map do |rotor|
      Rotor.new(mappings: Rotor::Mappings.const_get(rotor))
    end
  end

  def convert(string)
    string.upcase.split(SEPARATOR).map do |letter|
      @plugboard.process(letter)
    end.join(SEPARATOR)
  end

  private

  def process(letter)
    rotate

    letter = plug(letter)
    letter = forward(letter)
    letter = reflect(letter)
    letter = backward(letter)
    plug(letter)
  end

  def plug(letter)
    @plugboard.process(letter)
  end

  def reflect(letter)
    @reflector.reflect(letter)
  end

  def forward(letter)
    @rotors.inject(letter) do |lttr, rotor|
      rotor.forward(lttr)
    end
  end

  def backward(letter)
    @rotors.reverse.inject(letter) do |lttr, rotor|
      rotor.backward(lttr)
    end
  end

  def rotate
    @rotors.each do |rotor|
      rotor.rotate
      break unless rotor.turnover?
    end
  end
end
