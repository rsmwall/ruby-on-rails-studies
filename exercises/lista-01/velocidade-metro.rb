# Leia uma velocidade em m/s, calcule e escreva esta velocidade em km/h. (Vkm/h = Vm/s * 3.6)

print "Digite a velocidade (m/s): "
velo_metro = gets.chomp.to_f

velo_kilo = velo_metro * 3.6

puts "O resultado final é #{velo_kilo} Km/h!"