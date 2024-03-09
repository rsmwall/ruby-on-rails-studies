# Leia uma velocidade em km/h, calcule e escreva esta velocidade em m/s. (Vm/s = Vkm/h / 3.6)

print 'Velocidade: '
vel = gets.chomp.to_f

puts "A velocidade #{vel} km/h em m/s eh igual a #{(vel / 3.6).round(2)} m/s"
