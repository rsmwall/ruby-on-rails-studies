# array
numeros = [2, 3, 4, 5]

# .map nao altera o array original
novo_numeros = numeros.map do |numero|
  numero * 5
end

puts "Array original: #{numeros}"
puts "Novo array: #{novo_numeros}"

# .map! altera o array original
numeros.map! do |numero|
  numero * 5
end

puts "Array original: #{numeros}"