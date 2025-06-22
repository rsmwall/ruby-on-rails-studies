def caesar_cipher(phrase, steps)
   low_alphabet = ('a'..'z').to_a
   up_alphabet = ('A'..'Z').to_a
   new_phrase = ""
   phrase.chars.each do |char|
      if ('a'..'z').include?(char) || ('A'..'Z').include?(char)
         if char == char.upcase
            index = up_alphabet.find_index(char)
            new_phrase << up_alphabet[(index + steps) % 26]
         else
            index = low_alphabet.find_index(char)
            new_phrase << low_alphabet[(index + steps) % 26]
         end
      else
         new_phrase << char
      end
   end

   new_phrase
end

puts caesar_cipher("What a string!", 5)