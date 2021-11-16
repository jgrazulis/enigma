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

  it 'returns a hash in #encrypt' do
    enigma = Enigma.new
    expect(enigma.encrypt("hello world", "02715", "040895")).to be_a(Hash)
  end

  it 'can encrypt messages without a given date' do
    enigma = Enigma.new
    date = Date.today.strftime("%m%d%y")
    expected = {encryption: "qkfaxfqd ry", key: "02715", date: date}
    expect(enigma.encrypt("hello world", "02715")).to eq(expected)
  end

  it 'can encrypt messages without a given key' do
    enigma = Enigma.new
    expected =  {:encryption=>"sxxuzshxbdp", :date=> "111621", :key=>"040895"}
    expect(enigma.encrypt("hello world", "040895")).to eq(expected)
  end

  it 'can encrypt messages with a key and date' do
    enigma = Enigma.new
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can encrypt messages with special characters' do
    enigma = Enigma.new
    expect(enigma.encrypt("hello world!", "02715", "040895")).to eq({:date=>"040895", :encryption=>"keder ohulw!", :key=>"02715"})
  end

  it 'returns a hash in #decrypt' do
    enigma = Enigma.new
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to be_a(Hash)
  end

  it 'can decrypt messages with a key and date' do
    enigma = Enigma.new
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({:date=>"040895", :encryption=>"hello world", :key=>"02715"})
  end

  it 'can decrypt messages with special characters' do
    enigma = Enigma.new
    expect(enigma.decrypt("keder ohulw!", "02715", "040895")).to eq({:date=>"040895", :encryption=>"hello world!", :key=>"02715"})
  end
end
