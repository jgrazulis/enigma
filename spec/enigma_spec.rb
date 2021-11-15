require './lib/enigma'
require 'date'
require './lib/key'
require './lib/abc_index'

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_an_instance_of(Enigma)
  end


  # it 'generates a random five digit number for the default key' do
  #   enigma = Enigma.new
  #   expect(enigma.random_key).to eq(0)
  #   expect(enigma.a_key).to eq(a_key)
  # end

  it 'generates todays date by default' do
    enigma = Enigma.new
    date = Date.today
    expect(enigma.date).to eq(date)
  end

  it 'creates offsets' do
    expect(enigma.a_offset).to eq(1)
    expect(enigma.b_offset).to eq(0)
    expect(enigma.c_offset).to eq(2)
    expect(enigma.d_offset).to eq(5)
  end

  # it 'can create shifts' do
  #   keys = "02715"
  #   offsets = "040895"
  #   expect(enigma.shift).to eq({a: 3, b: 27, c: 73, d: 20})
  # end
  #
  # it 'can encrypt messages with a key and date' do
  #   expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
  #   expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  # end

end
