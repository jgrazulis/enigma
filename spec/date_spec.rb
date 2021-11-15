require './lib/date'

describe Date do
  it 'exists' do
    date = Date.new
    expect(date).to be_an_instance_of(Date)
  end
end
