# Leia um valor em horas e um valor em minutos, calcule e escreva o equivalente em minutos.

print 'Digite o valor de horas: '
horas = gets.chomp.to_i

print 'Digite o valor de minutos: '
minutos = gets.chomp.to_i

puts minutos + horas * 60
