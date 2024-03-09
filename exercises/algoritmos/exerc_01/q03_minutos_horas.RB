# Leia um valor em minutos, calcule e escreva o equivalente em horas e minutos.

print 'Digite os minutos: '
minutos = gets.chomp.to_i

horas = minutos / 60
minutos %= 60

puts "Voce digitou #{horas} hr e #{minutos} minutos"
