module Poi
  class Analyzer

    def initialize(word)
      @word = word
    end

    def word
      str = []

      Natto::MeCab.new.parse(@word) do |w|
        spell = w.surface
        next if spell.nil?
        yield spell
        str << spell
      end

      str.join
    end

  end
end
