# Leia 2 números, calcule e escreva a divisão da soma pela subtração dos números lidos.

numeros = []

2.times do
  print 'Digite um numero: '
  numeros << gets.chomp.to_i
end

puts "A divisao eh #{numeros.sum / (numeros[0] - numeros[1])}"
