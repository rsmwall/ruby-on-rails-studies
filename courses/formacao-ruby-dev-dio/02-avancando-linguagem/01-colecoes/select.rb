# array
# numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -3, -6, 0, -6]

# selecionados = numeros.select do |num|
#   num <= 0
# end

# puts selecionados

# hash
numeros = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

selecionados = numeros.select do |key, value|
  key > 0
end

puts selecionados