#spec/caesar-cipher_spec.rb
require './caesar-cipher'

describe '#shift' do
  it 'shifts lowercase letters' do
    expect(caesar_cipher('abc', 3)).to eq('def')
  end
end
