#spec/caesar-cipher_spec.rb
require './caesar_cipher'

describe CaesarCipher do
  describe '#shift' do
    caesar = CaesarCipher.new

    it 'shifts lowercase letters' do
      expect(caesar.shift('abc', 3)).to eq('def')
    end

    it 'ignores non-letters' do
      expect(caesar.shift('a3 b3 c3!', 3)).to eq('d3 e3 f3!')
    end

    it 'maintains case' do
      expect(caesar.shift('Aa Bb Cc.', 3)).to eq('Dd Ee Ff.')
    end

    it 'can shift more than 26 places' do
      expect(caesar.shift('abc', 29)).to eq('def')
    end

    it 'can shift backwards' do
      expect(caesar.shift('def', -3)).to eq('abc')
    end

    it 'can shift from the end to beginning of the alphabet' do
      expect(caesar.shift('xyz', 3)).to eq('abc')
    end
  end
end
