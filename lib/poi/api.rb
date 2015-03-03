module Poi
  class API
    
    def self.convert(word)
      Machine.new(word).convert
                       .prefix
                       .suffix
                       .to_string
    end

    def self.add(type, key, val = nil)
      dic = Dictionary.new
      case type
      when :prefix
        dic.add_prefix(key)
      when :suffix
        dic.add_suffix(key)
      when :mapping
        dic.add_mapping(key, val)
      end
    end

    def self.delete(type, word)
    end

  end
end
