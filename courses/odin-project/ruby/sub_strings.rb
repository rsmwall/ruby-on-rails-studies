# frozen_string_literal: true

def substrings(string, dictionary)
  new_string = []
  string.downcase.split.each do |element|
    new_string << dictionary.select { |word| element.include?(word) }
  end
  new_string.flatten.sort.each_with_object(Hash.new(0)) do |word, result|
    result[word] += 1
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings("Howdy partner, sit down! How's it going?", dictionary)
