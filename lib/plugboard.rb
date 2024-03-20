require "constants"

class Plugboard
  include Constants
  def initialize(connections:)
    @connections = connections.upcase.split(SPACE_SEPARATOR).each_with_object({}) do |pair, hash|
      first, second = pair.split(SEPARATOR)
      hash[first] = second
      hash[second] = first
    end
  end

  def process(letter)
    @connections[letter] || letter
  end
end
