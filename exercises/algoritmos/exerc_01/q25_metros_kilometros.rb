# Leia um número inteiro de metros, calcule e escreva quantos Km e quantos metros ele corresponde.

print 'Distancia (m): '
metros = gets.chomp.to_i

km = metros / 1000
metros %= 1000

puts "Voce digitou #{km} km e #{metros} m"
