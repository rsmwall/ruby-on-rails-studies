# Leia uma velocidade em km/h, calcule e escreva esta velocidade em m/s. (Vm/s = Vkm/h / 3.6)

print "Digite a velocidade (Km/h): "
vel_kilometro = gets.chomp.to_f

vel_metro = vel_kilometro / 3.6

puts "O resultado final é #{vel_metro} m/s!"