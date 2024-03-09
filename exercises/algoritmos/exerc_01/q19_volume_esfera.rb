# Leia o valor do raio de uma esfera, calcule e escreva seu volume. (v = (4 * p * r3) / 3) (p = 3,14)

print 'Raio: '
raio = gets.chomp.to_f

puts "Volume = #{4 * Math::PI * (raio**3)}"
