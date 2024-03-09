# Leia um número inteiro (4 dígitos), calcule e escreva a soma dos elementos que o compõem. Ex.: número = 9534 ; soma = 9+5+3+4 = 21.

print 'Numero de 4 digitos: '
numero = gets.chomp

numeros = numero.split('')
numeros.map!(&:to_i)

puts "Soma = #{numeros.sum}"
