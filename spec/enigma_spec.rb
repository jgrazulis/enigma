require '.lib/enigma'

describe 'Enigma' do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_an_instance_of(Enigma)
  end

  it 'has attributes with hashes' do
    expect(encrypt.message).to eq({})
  end
end
