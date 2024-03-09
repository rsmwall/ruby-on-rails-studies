# Leia o valor do raio de uma circunferência, calcule e escreva seu comprimento.(c = 2 * p * r)

print 'Raio: '
raio = gets.chomp.to_f

puts "Comprimento = #{2 * Math::PI * raio}"
