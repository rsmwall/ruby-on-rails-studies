# Leia um número inteiro (3 dígitos), calcule e escreva a diferença entre o número e seu inverso.

print 'Numero de 3 digitos: '
numero = gets.chomp

puts "Diferenca: #{numero.to_i - numero.reverse.to_i}"
