# caesar-cipher.rb

def caesar_cipher(message, shift)
  letters = message.split("")

  # The user could enter a number larger than 26
  shift = shift % 26

  letters_shifted = letters.map do |letter|
    code = letter.ord

    # Check for uppercase letters
    if code >= 65 && code <= 90
      code += shift
      if code > 90
        # Wrap from Z to A
        code = code - 90 + 64
      end

    # Check for lowercase letters
    elsif code >= 97 && code <= 122
      code += shift
      if code > 122
        # Wrap from z to a
        code = code - 122 + 96
      end
    end

    code.chr
   
  end
  puts letters_shifted.join
end


def main
  puts "Enter a message to encipher: "
  message_to_shift = gets.chomp
  puts "Enter a number to shift: "
  shift_amount = gets.chomp.to_i
  if message_to_shift.is_a?(String) && shift_amount.is_a?(Integer)
    caesar_cipher(message_to_shift, shift_amount)
  else
    puts "Sorry, one of your inputs was incorrect"
  end
end

main()