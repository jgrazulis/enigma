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
    expect(generator.random_key).to be_an(Array)
    expect(generator.random_key.first).to be_an(Integer)
    expect(generator.random_key.last).to be_an(Integer)
  end

  it 'pads keys with 0s' do
    generator = Generator.new
    expect(generator.key_pad([1])).to eq("00001")
    expect(generator.key_pad([1, 2, 3])).to eq("00123")
    expect(generator.key_pad([0, 0, 0, 0])).to eq("00000")
  end

  it 'returns the date as a string' do
    generator = Generator.new
    expect(generator.date_string).to be_a(String)
  end

  it 'generates offsets' do
    generator = Generator.new
    expect(generator.offset).to be_an(String)
  end



end
