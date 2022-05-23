# utilizando array, receba 3 numeros e exiba a segunda potencia de cada um

numeros = []
numeros_novo = []
contador = 0

loop do
  print "Digite o numero #{contador + 1}: "
  STDOUT.flush
  numeros[contador] = gets.chomp.to_i
  break if contador == 2
  contador += 1
end

numeros_novo = numeros.map do |numero|
  numero ** 2
end

puts "Números digitados: #{numeros}"
puts "Números com potencia: #{numeros_novo}"