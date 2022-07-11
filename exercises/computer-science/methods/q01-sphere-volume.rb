# Faça uma função que recebe por parâmetro o raio de uma esfera e calcula o seu volume (v = 4.P .R^3/3).

PI = 3.14

def sphere_volume(radius)
  volume = (4 * PI * (radius ** 3) / 3)
end

print 'Digite o valor do raio: '
STDOUT.flush
radius = gets.chomp.to_f

sphere_volume = sphere_volume(radius)

puts "O volume da esfera é igual a #{sphere_volume}"
