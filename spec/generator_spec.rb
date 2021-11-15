require 'date'
require './lib/generator'

describe Generator do
  it 'exists' do
    generator = Generator.new
    expect(generator).to be_an_instance_of(Generator)
  end

  it 'has attributes' do
    generator = Generator.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l" , "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    expect(generator.alphabet).to eq(expected)
    expect(generator.alphabet).to be_an(Array)
    expect(generator.alphabet.length).to eq(27)
  end

  it 'generates #random_key' do
    generator = Generator.new
    expect(generator.random_key).to be_an(String)
    # expect(generator.random_key.first).to be_an(Integer)
    # expect(generator.random_key.last).to be_an(Integer)
  end

  it 'pads keys with 0s' do
    generator = Generator.new
    expect(generator.key_pad([1])).to eq("00001")
    expect(generator.key_pad([1, 2, 3])).to eq("00123")
    expect(generator.key_pad([0, 0, 0, 0])).to eq("00000")
  end

  it 'has keys' do
    generator = Generator.new
    expect(generator.a_key).to be_an(String)
    expect(generator.b_key).to be_an(Integer)
    expect(generator.c_key).to be_an(Integer)
    expect(generator.d_key).to be_an(Integer)
  end

  it 'returns the date as a string' do
    generator = Generator.new
    expect(generator.date_string).to be_a(String)
  end

  it '#date_parse' do
    generator = Generator.new
    date = Date.today
    expect(generator.date_parse).to eq(date)
  end

  it '#new_date' do
    generator = Generator.new
    expect(generator.new_date).to be_an(Integer)
  end

  it 'returns #sq_rt_date' do
    generator = Generator.new
    expect(generator.sq_rt_date).to be_an(Integer)
  end

  it 'date_array' do
    generator = Generator.new
    expect(generator.date_array).to be_an(Array)
  end

  it 'splits out the last four digits of the date array' do
    generator = Generator.new
    expect(generator.last_four).to be_a(String)
  end

  it 'generates offsets' do
    generator = Generator.new
    expect(generator.a_offset).to be_an(Integer)
    expect(generator.b_offset).to be_an(Integer)
    expect(generator.c_offset).to be_an(Integer)
    expect(generator.d_offset).to be_an(Integer)
  end

  it 'can create shifts with a default key and date' do
    generator = Generator.new
    expect(generator.shifts).to be_a(Hash)
  end

  it 'can create shifts with a given date and key' do
    generator = Generator.new
    key = "02715"
    offsets = "040895"
    expect(generator.shifts).to eq({a: 3, b: 27, c: 73, d: 20})
  end

end
