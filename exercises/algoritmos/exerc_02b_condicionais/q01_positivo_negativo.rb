# Leia um número e mostre na tela se o número é positivo ou negativo.

print 'Numero: '
num = gets.chomp.to_i

puts num.positive? ? 'positivo' : 'negativo'
