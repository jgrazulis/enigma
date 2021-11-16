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

  # it 'can encrypt messages without a key or date' do
  #   enigma = Enigma.new
  #   expected = {encryption: "mifatdqdwpy", key: "02715", date: "111521"}
  #   expect(enigma.encrypt("hello world")).to eq(expected)
  # end

  it 'can encrypt messages without a given date' do
    enigma = Enigma.new
    expected = {encryption: "mifatdqdwpy", key: "02715", date: "111521"}
    expect(enigma.encrypt("hello world", "02715")).to eq(expected)
  end

  it 'can encrypt messages without a given key' do
    enigma = Enigma.new
    expected =  {:date=>"111521", :encryption=>"ovxuvqhxybp", :key=>"040895"}
    expect(enigma.encrypt("hello world", "040895")).to eq(expected)
  end

  it 'can encrypt messages with a key and date' do
    enigma = Enigma.new
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can decrypt messages' do
    enigma = Enigma.new
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({:date=>"040895", :encryption=>"hello world", :key=>"02715"})
  end
end
