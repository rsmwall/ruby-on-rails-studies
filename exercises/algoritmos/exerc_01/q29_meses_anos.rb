# Leia um número inteiro de meses, calcule e escreva quantos anos e quantos meses ele corresponde.

print 'Meses: '
meses = gets.chomp.to_i

anos = meses / 12
meses %= 12

puts "Voce digitou #{anos} anos e #{meses} meses"
