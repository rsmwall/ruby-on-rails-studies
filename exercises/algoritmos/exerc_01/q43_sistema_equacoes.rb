# Um sistema de equações lineares do tipo , pode ser resolvido segundo mostrado abaixo
# Escreva um algoritmo que leia os coeficientes a, b, c, d, e e f, calcule e escreva os valores de x e y.

n = []

6.times do
  print 'Numero: '
  n << gets.chomp.to_i
end

x = ((n[2] * n[4]) - (n[1] * n[5])) / ((n[0] * n[4]) - (n[1] * n[3]))
y = ((n[0] * n[5]) - (n[2] * n[3])) / ((n[0] * n[4]) - (n[1] * n[3]))

puts "x: #{x}, y: #{y}"
