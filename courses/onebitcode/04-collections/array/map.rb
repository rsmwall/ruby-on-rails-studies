array = [1,2,3,4]

puts "\nExecutando .map multiplicando cada item por 2"

new_array = array.map do |a|
  a * 2
end

puts "\nArray original"
puts array

puts "\nNovo array"
puts new_array

puts "\nExecutando o .map multiplicando cada item por 2"
# .map! forca o .map a modificar os elementos do array original
array.map! do |a|
  a * 2
end

puts "\nArray original"
puts array