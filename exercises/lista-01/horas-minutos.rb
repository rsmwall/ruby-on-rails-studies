# Leia um valor em horas e um valor em minutos, calcule e escreva o equivalente em minutos

print "Digite a quantidade de horas: "
horas = gets.chomp.to_i

print "Digite a quantidade de minutos: "
minutos = gets.chomp.to_i

minutos = minutos + (horas * 60)

puts "A quantidade total de minutos é #{minutos} min!"