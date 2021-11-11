require './lib/enigma'

RSpec.describe Enigma do
let(:enigma) { Enigma.new }

  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_an_instance_of(Enigma)
  end

  it 'can encrypt messages with a key and date' do
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq({encryption: "keder ohulw", key: "02715", date: "040895"  })
  end
end
