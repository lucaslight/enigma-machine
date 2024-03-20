module Constants
  ALPHABET = ("A".."Z").to_a.freeze
  SAMPLE_MAPPING = ALPHABET.reverse.freeze
  SEPARATOR = "".freeze
  SPACE_SEPARATOR = " ".freeze

  module Mappings
    # rubocop:disable Style/PercentLiteralDelimiters
    A = %w(E K M F L G D Q V Z N T O W Y H X U S P A I B R C J).freeze
    B = %w(A J D K S I R U X B L H W T M C Q G Z N P Y F V O E).freeze
    C = %w(B D F H J L C P R T X V Z N Y E I W G A K M U S Q O).freeze
    # D = %w(E S O V P Z J A Y Q U I R H X L N F T G K D C M W B).freeze
    # E = %w(V Z B R G I T Y U P S D N H L X A W M J Q O F E C K).freeze
    # F = %w(J P G V O U M F Y Q B E N H Z R D K A S X L I C T W).freeze
    # G = %w(N Z J H G R C X M Y S W B O U F A I V L P E K Q D T).freeze
    # H = %w(Q W E R T Z U I O A S D F G H J K P Y X C V B N M L).freeze
    # rubocop:enable Style/PercentLiteralDelimiters
  end
end
