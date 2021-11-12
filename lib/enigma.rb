require 'date'

class Enigma
  attr_reader :abc_index, :shift, :key, :date
  def initialize
    @abc_index = ("a".."z").to_a << " "
    # @date = date.today
  end

  def
  # what steps need to happen to encrypt
  # find the shifts
  # encrypt the message using shifts
  # find the shifts => 4 integers
  # once the shifts are known, they shift a given letter down the alphabet
    # down by that number to return (possibly) a new letter
  # example: "hello" and shifts 1, 2, 3, 4, encrypt using shifts and .each to
  # iterate over each letter in string message
  # encrypt: find index of letter; rotate by shift or by key
  # def encrypt(message, key, date) # date
  #   {message => "message",
  #   key => "key",
  #   date => "date" }
  # end

  def decrypt
  end


end
