require 'date'

class Generator
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def random_key
    # key = []
    # key <<
    key_num = rand(00000..9999)
    num_string = key_num.to_s
    # delete("[]")
    num_string.rjust(5, '0')
  end

  def key_pad(key_num)
    num_string = key_num.to_s.delete("[] ,")
    num_string.rjust(5, '0')
  end
    # key_pad(random_key)

  def a_key
    a = (random_key[0]) + (random_key[1])
    # a.to_i
  end

  def b_key
    b = (random_key[1]) + (random_key[2])
    b.to_i
  end


  def c_key
    c= (random_key[2]) + (random_key[3])
    c.to_i
  end

  def d_key
    d= (random_key[3]) + (random_key[4])
    d.to_i
  end

  def date_string(date = Date.today) # date should be in format of DDMMYY
    date = Date.today if date == nil
    date.to_s
  end

  def sq_rt_date
    # date_parse = Date.parse(date_string)
    # new_date = a.to_time.to_i
    Integer.sqrt(new_date)
  end

  def date_parse
    # a = Date.parse(date_string)
    Date.parse(date_string)
  end

  def new_date
    # new_date = a.to_time.to_i
    date_parse.to_time.to_i
  end

  def date_array
    new_date.to_s.split("")
  end


  def last_four
  # take the epoch (new_date) value last 4 digits by
    date_array[date_array.length - 4] + date_array[date_array.length - 3] + date_array[date_array.length - 2] +  date_array[date_array.length - 1]
  end

  # split into different shift (a, b, c, d) offsets by
  # last_four[0] etc. to split up for individual offsets
  def a_offset
    last_four[0].to_i
  end

  def b_offset
    last_four[1].to_i
  end

  def c_offset
    last_four[2].to_i
  end

  def d_offset
    last_four[3].to_i
  end

  def shifts
    shifts = Hash.new(0)
    {b: (b_offset + b_key),
    c: (c_offset + c_key),
    d: (d_offset + d_key)}

  end
end
