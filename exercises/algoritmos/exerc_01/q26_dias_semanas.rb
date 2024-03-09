# Leia um número inteiro de dias, calcule e escreva quantas semanas e quantos dias ele corresponde.

print 'Dias: '
dias = gets.chomp.to_i

semanas = dias / 7
dias %= 7

puts "Voce digitou #{semanas} semanas e #{dias} dias"
