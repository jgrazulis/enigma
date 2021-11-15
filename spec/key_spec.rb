require './lib/key'

describe Key do
  it 'exists' do
    key = Key.new 
    expect(key).to be_an_instance_of(Key)
  end

  # it 'generates a random five digit number' do
  #   expect(initialize).to
  # end
end
