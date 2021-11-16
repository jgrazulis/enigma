require 'date'

class Enigma
  attr_accessor :key, :date, :abc_index
  def initialize
    @generator = Generator.new
    @key = key
    @date = Date.today
    @abc_index = ABC_index.new
  end

  def encrypt(message, key = @generator.random_key, date = @generator.date_string(Date.today.strftime("%m%d%y")))
    encrypt_hash =
    {encryption: message,
    key: key,
    date: date}
    encrypt_string = []
    e_shifts = @generator.shifts(key, date)
    # by corresponding shift
    message.chars.each_with_index do |letter, index|
      if @abc_index.letter_array.include?(letter) == false
        encrypt_string.push(letter)
      elsif index%4 == 0
        encrypt_string << @abc_index.letter_array.rotate(e_shifts.values[0])[@abc_index.letter_hash[letter]]
      elsif index%4 == 1
        encrypt_string << @abc_index.letter_array.rotate(e_shifts.values[1])[@abc_index.letter_hash[letter]]

      elsif index%4 == 2
        encrypt_string << @abc_index.letter_array.rotate(e_shifts.values[2])[@abc_index.letter_hash[letter]]

      else index%4 == 3
        encrypt_string << @abc_index.letter_array.rotate(e_shifts.values[3])[@abc_index.letter_hash[letter]]
      end
    end
    encrypt_hash[:encryption] = encrypt_string.join
    encrypt_hash
  end

  def decrypt(message, key = @generator.random_key, date = @generator.date_string(Date.today.strftime("%m%d%y")))
    decrypt_hash = {encryption: message, key: key, date: date}
    decrypt_string = []
    d_shifts = @generator.shifts(key, date)
    message.chars.each_with_index do |letter, index|
      if @abc_index.letter_array.include?(letter) == false
        decrypt_string.push(letter)
      elsif index%4 == 0
        decrypt_string << @abc_index.letter_array.rotate(d_shifts.values[0] * -1)[@abc_index.letter_hash[letter]]
      elsif index%4 == 1
        decrypt_string << @abc_index.letter_array.rotate(d_shifts.values[1] * -1)[@abc_index.letter_hash[letter]]
      elsif index%4 == 2
        decrypt_string << @abc_index.letter_array.rotate(d_shifts.values[2] * -1)[@abc_index.letter_hash[letter]]
      else index%4 == 3
        decrypt_string << @abc_index.letter_array.rotate(d_shifts.values[3] * -1)[@abc_index.letter_hash[letter]]
      end
    end
    decrypt_hash[:encryption] = decrypt_string.join
    decrypt_hash
  end
end
