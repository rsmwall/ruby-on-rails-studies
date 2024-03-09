# Leia um número inteiro de horas, calcule e escreva quantas semanas, quantos dias e quantas horas ele corresponde.

print 'Horas: '
horas = gets.chomp.to_i

dias = horas / 24
horas %= 24
semanas = dias / 7
dias %= 7

puts "Voce digitou #{semanas} semanas #{dias} dias e #{horas} horas"
