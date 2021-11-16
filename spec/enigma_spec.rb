require './lib/enigma'
require 'date'
require './lib/abc_index'
require './lib/generator'

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_an_instance_of(Enigma)
  end

  it 'generates todays date by default' do
    enigma = Enigma.new
    date = Date.today
    expect(enigma.date).to eq(date)
  end

  it 'can encrypt messages without a given date' do
    enigma = Enigma.new
    expected = {encryption: "nifaudqdxpy", key: "02715", date: "151121"}
    expect(enigma.encrypt("hello world", "02715")).to eq(expected)
  end

  # it 'can encrypt messages without a given key' do
  #   enigma = Enigma.new
  #   expected = {encryption: "pvxuwqhxzbp", key: "0", date: "040895"}
  #   expect(enigma.encrypt("hello world", "040895")).to eq(expected)
  # end

  it 'can encrypt messages with a key and date' do
    enigma = Enigma.new
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end
end
