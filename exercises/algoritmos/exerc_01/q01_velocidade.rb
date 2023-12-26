# Leia uma velocidade em m/s, calcule e escreva esta velocidade em km/h. (Vkm/h = Vm/s * 3.6)

print 'Digite a velocidade (m/s): '
velocidade = gets.chomp.to_f

puts "#{velocidade * 3.6} Km/h"
