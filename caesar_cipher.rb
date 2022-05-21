# frozen_string_literal: true

# caesar_cipher.rb

class CaesarCipher
  def shift(message, num)
    letters = message.split('')

    # The user could enter a number larger than 26
    num = num % 26

    letters_shifted = letters.map do |letter|
      code = letter.ord

      # Check for uppercase letters
      if code >= 65 && code <= 90
        code += num
        if code > 90
          # Wrap from Z to A
          code = code - 90 + 64
        end

      # Check for lowercase letters
      elsif code >= 97 && code <= 122
        code += num
        if code > 122
          # Wrap from z to a
          code = code - 122 + 96
        end
      end

      code.chr
    end

    puts letters_shifted.join
  end
end
