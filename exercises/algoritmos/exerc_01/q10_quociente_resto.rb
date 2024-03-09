# Leia 2 números inteiros, calcule e escreva o quociente e o resto da divisão do 1o pelo 2o.

numeros = []

2.times do
  print 'Digite um numero: '
  numeros << gets.chomp.to_i
end

puts "Quociente: #{numeros[0] / numeros[1]}, Resto: #{numeros[0] % numeros[1]}"
