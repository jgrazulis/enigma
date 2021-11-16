require 'date'

class Generator
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def random_key
    key_num = rand(00000..9999)
    num_string = key_num.to_s
    num_string.rjust(5, '0')
  end

  # def key_pad(key_num)
  #   num_string = key_num.to_s.delete("[] ,")
  #   num_string.rjust(5, '0')
  # end
    # key_pad(random_key)

  def formatted_key(key)
    a_key = key.slice(0..1).to_i
    b_key = key.slice(1..2).to_i
    c_key = key.slice(2..3).to_i
    d_key = key.slice(3..4).to_i
    [a_key, b_key, c_key, d_key]
  end

  def date_string(date = Date.today) # date should be in format of DDMMYY
    # makes date YYYY-MM-DD
    date = Date.today.strftime("%m%d%y") if date == nil
    date.to_s
  end

  def sq_date(date)
    sq = (date.to_i) ** 2
    last_four(sq.to_s.chars)
  end


  def date_parse
    # returns full date value
    Date.parse(date_string)
  end

  def new_date
    # gives epoch
    date_parse.to_time.to_i
  end

  def date_array
    new_date.to_s.split("")
  end


  def last_four(array_date)
  # take the epoch (new_date) value last 4 digits by
    array_date[- 4] + array_date[- 3] + array_date[- 2] +  array_date[- 1]
  end

  # split into different shift (a, b, c, d) offsets by
  # last_four[0] etc. to split up for individual offsets
  def a_offset(num_array)
    last_four(num_array)[0].to_i
  end

  def b_offset(num_array)
    last_four(num_array)[1].to_i
  end

  def c_offset(num_array)
    last_four(num_array)[2].to_i
  end

  def d_offset(num_array)
    last_four(num_array)[3].to_i
  end

  def shifts(key, date)
    shifts = Hash.new(0)
    k = formatted_key(key)
    d1 = sq_date(date)
    {a: (a_offset(d1) + k[0]),
    b: (b_offset(d1) + k[1]),
    c: (c_offset(d1) + k[2]),
    d: (d_offset(d1) + k[3])}
  end
end
