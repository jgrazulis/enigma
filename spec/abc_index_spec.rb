require './lib/abc_index'

describe ABC_index do
  abc_index = ABC_index.new
  it 'exists' do
    expect(abc_index).to be_an_instance_of(ABC_index)
  end

  it 'has attributes' do
    abc_index = ABC_index.new
    expect(abc_index.letter_array).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
    expect(abc_index.letter_array).to be_an(Array)
    expect(abc_index.letter_hash).to eq({"a" => 0,  "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6, "h" => 7, "i" => 8, "j" => 9, "k" => 10, "l" => 11, "m" => 12, "n" => 13, "o" => 14, "p" => 15, "q" => 16, "r" => 17, "s" => 18, "t" => 19, "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24, "z" => 25, " " => 26})
    expect(abc_index.letter_hash).to be_a(Hash)
  end
end
