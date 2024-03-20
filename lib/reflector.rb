require "constants"

class Reflector
  include Constants

  def initialize(mapping: SAMPLE_MAPPING)
    @mapping = mapping
    @position = 0
  end

  def reflect(letter)
    return letter unless ALPHABET.include?(letter)

    ALPHABET[
      (@mapping.index(letter) + @position) % ALPHABET.length
    ]
  end
end
