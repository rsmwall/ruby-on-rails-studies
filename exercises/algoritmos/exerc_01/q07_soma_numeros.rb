# Leia 3 números, calcule e escreva a soma dos 2 primeiros e a diferença entre os 2 últimos.

numeros_separados = []
3.times do
  print 'Digite um numero: '
  numeros_separados << gets.chomp.to_i
end

puts "Soma: #{numeros_separados[0] + numeros_separados[1]}, Diferenca: #{numeros_separados[1] - numeros_separados[2]}"
