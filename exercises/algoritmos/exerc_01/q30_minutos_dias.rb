# Leia um número inteiro de minutos, calcule e escreva quantos horas, quantas minutos e quantos minutos ele corresponde.

print 'Minutos: '
minutos = gets.chomp.to_i

horas = minutos / 60
minutos %= 60
dias = horas / 24
horas %= 24

puts "Voce digitou #{dias} dias #{horas} horas e #{minutos} minutos"
