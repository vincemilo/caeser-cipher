# spec/caeser_cipher.rb
require './lib/caeser_cipher'

describe '#caeser_cipher' do
  it 'Takes a string and a shift factor and outputs the modified string' do
    expect(caeser_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end
