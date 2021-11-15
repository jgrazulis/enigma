require './lib/enigma'
require 'date'
require './lib/key'
require './lib/abc_index'

RSpec.describe Enigma do
let(:enigma) { Enigma.new }

  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_an_instance_of(Enigma)
  end

  # it 'can create shifts' do
  #   keys = "02715"
  #   offsets = "040895"
  #   expect(enigma.shift).to eq({a: 3, b: 27, c: 73, d: 20})
  # end

  it 'generates a random five digit number' do
    enigma = Enigma.new
    expect(enigma.default_key).to eq(02715)
  end

  it 'generates todays date' do
    enigma = Enigma.new
    date = Date.today
    expect(enigma.date).to eq(date)
  end

  # it 'can encrypt messages with a key and date' do
  #   expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
  #   expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  # end

end
