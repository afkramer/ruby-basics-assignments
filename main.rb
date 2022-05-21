# frozen_string_literal: true

require_relative 'caesar_cipher'

def main
  puts 'Enter a message to encipher: '
  message_to_shift = gets.chomp
  puts 'Enter a number to shift: '
  shift_amount = gets.chomp.to_i
  if message_to_shift.is_a?(String) && shift_amount.is_a?(Integer)
    caesar_cipher(message_to_shift, shift_amount)
  else
    puts 'Sorry, one of your inputs was incorrect'
  end
end

main
