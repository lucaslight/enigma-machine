require_relative "constants"

class Rotor
  include Constants

  module Turnover
    DEFAULT = 0
    A = Constants::Mappings::A.index("C")
    B = Constants::Mappings::B.index("V")
    C = Constants::Mappings::C.index("U")
  end

  def initialize(mappings: Constants::Mappings::A)
    @mappings = mappings
    @turnover = Turnover::DEFAULT
    @position = 0
    reset!
  end

  def rotate
    @offset = (@offset + 1) % ALPHABET.length
    self
  end

  def turnover?
    ((@position + @offset) % ALPHABET.length).zero?
  end

  def forward(letter)
    return letter unless ALPHABET.include?(letter)

    @mappings[(ALPHABET.index(letter) + @position + @offset) % ALPHABET.length]
  end

  def backward(letter)
    return letter unless ALPHABET.include?(letter)

    ALPHABET[(@mappings.index(letter) + @position - @offset) % ALPHABET.length]
  end

  def reset!
    @offset = 0
  end

  def self.rotors
    [
      new(mappings: Constants::Mappings::A, turnover: Turnover::A),
      new(mappings: Constants::Mappings::B, turnover: Turnover::B),
      new(mappings: Constants::Mappings::C, turnover: Turnover::C)
    ]
  end
end
