require 'date'

class Enigma
  attr_accessor :key, :date, :abc_index
  def initialize
    @key = key
    @date = Date.today
    @abc_index = ("a".."z").to_a << " "
  end

  # def random_key
  #   rand(000000..99999)
  # end

  def a_key
    key
  end

  def a_offset
    date.to_s
  end

  def b_offset

  end

  def c_offset

  end

  def d_offset

  end



  # def shift
  #   keys + offsets
  # end
  # what steps need to happen to encrypt
  # find the shifts
  # encrypt the message using shifts
  # find the shifts => 4 integers
  # once the shifts are known, they shift a given letter down the alphabet
    # down by that number to return (possibly) a new letter
  # example: "hello" and shifts 1, 2, 3, 4, encrypt using shifts and .each to
  # iterate over each letter in string message
  # encrypt: find index of letter; rotate by shift or by key
  def encrypt(message, key = random_key, date = default_date)
    {message: message,
    key: key,
    date: date}
  end

  def decrypt
  end
end
