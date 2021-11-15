require 'date'

class Enigma
  attr_accessor :key, :date, :abc_index
  def initialize
    @key = rand(00000..99999)
    @date = Date.today
    @abc_index = ("a".."z").to_a << " "
  end

  # def generate_key
  #   Key
  #   require "pry"; binding.pry
  # end
  #

  def default_key
    @key
  end

  def offset
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
  def encrypt(message, key = default_key, date = default_date)
    {message: message,
    key: key,
    date: date}
  end

  def decrypt
  end


end
