require 'date'
class Enigma
  attr_reader :abc_index, :shift, :key, :date
  def initialize
    @abc_index = ("a".."z").to_a << " "
    @shift = shift
    @key = key
    @date - date.today
  end


  def encrypt(message, key, date)
  end
end
