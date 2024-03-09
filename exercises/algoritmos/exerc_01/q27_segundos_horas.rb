# Leia um número inteiro de segundos, calcule e escreva quantas horas, quantos minutos e quantos segundos ele corresponde.

print 'Segundos: '
segundos = gets.chomp.to_i

minutos = segundos / 60
segundos %= 60
horas = minutos / 60
minutos %= 60

puts "Voce digitou #{horas} horas #{minutos} minutos e #{segundos} segundos"
