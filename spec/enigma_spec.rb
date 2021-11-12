require './lib/enigma'

RSpec.describe Enigma do
let(:enigma) { Enigma.new }

  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_an_instance_of(Enigma)
  end

  # it 'can encrypt messages with a key and date' do
  #   expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
  #   expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  # end

  # it 'can create shifts' do
  #   keys = "02715"
  #   offsets = "040895"
  #   expect(enigma.shift).to eq({a: 3, b: 27, c: 73, d: 20})
  # end
end
