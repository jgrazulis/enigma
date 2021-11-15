require 'date'

class Generator
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def random_key
    key = []
    key << rand(00000..9999)
  end

  def key_pad(key_num)
    num_string = key_num.to_s.delete("[] ,")
    num_string.rjust(5, '0')
  end
end
