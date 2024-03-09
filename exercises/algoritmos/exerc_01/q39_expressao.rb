# Leia três números inteiros e positivos (A, B, C) e calcule a seguinte expressão:

numeros = []

3.times do
  print 'Digite um numero: '
  numeros << gets.chomp.to_i
end

r = (numeros[0] + numeros[1])**2
s = (numeros[1] + numeros[2])**2
d = (r + s) / 2

puts d
