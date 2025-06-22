# frozen_string_literal: true

def caesar_cipher(phrase, steps)
  low_alphabet = ('a'..'z').to_a
  up_alphabet = ('A'..'Z').to_a
  phrase.chars.map do |char|
    case char
    when 'a'..'z' then get_new_char(low_alphabet, low_alphabet.find_index(char), steps)
    when 'A'..'Z' then get_new_char(up_alphabet, up_alphabet.find_index(char), steps)
    else
      char
    end
  end.join
end

def get_new_char(alphabet, index, steps)
  alphabet[(index + steps) % 26]
end

puts caesar_cipher('What a string!', 5)
