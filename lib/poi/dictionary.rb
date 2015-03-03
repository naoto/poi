module Poi
  class Dictionary

    def initialize
      @dic = {prefix: [], suffix: [], mapping: {}}
    end

    def pattern
      @dic[:mapping].keys
    end

    def mapping
      @dic[:mapping]
    end

    def choice_prefix
      @dic[:prefix].sample
    end

    def choice_suffix
      @dic[:suffix].sample
    end
  end
end
