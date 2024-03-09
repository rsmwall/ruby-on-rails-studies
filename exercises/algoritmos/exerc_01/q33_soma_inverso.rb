# Leia um número inteiro (3 dígitos), calcule e escreva a soma do número com seu inverso. (Ex.: número = 532 ; inverso = 235 ; soma = 532 + 235 = 767).

print 'Numero de 3 digitos: '
numero = gets.chomp

puts "Diferenca: #{numero.to_i + numero.reverse.to_i}"
