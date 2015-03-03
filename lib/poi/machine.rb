module Poi
  class Machine

    def initialize(word)
      @word = word
      @dic = Dictionary.new
    end

    def convert
      @word = Analyzer.new(@word).word do |word|
        word.gsub!(/(#{@dic.pattern.join("|")})/, @dic.mapping)
      end
      self
    end

    def prefix
      @word = @dic.choice_prefix.concat(@word)
      self
    end

    def suffix
      @word = @word.concat(@dic.choice_suffix)
      self
    end

    def to_string
      @word
    end

  end
end
