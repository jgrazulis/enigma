require './lib/abc_index'

describe ABC_index do
  abc_index = ABC_index.new
  it 'exists' do
    expect(abc_index).to be_an_instance_of(ABC_index)
  end

  it 'has attributes' do
    abc_index = ABC_index.new
    expect(abc_index.letter_array).to be_an(Array)
    expect(abc_index.letter_hash).to be_a(Hash)
  end
end
