# Leia 2 números (A, B) e escreva-os em ordem inversa (B, A).

numeros = []

2.times do
  print 'Digite um numero: '
  numeros << gets.chomp.to_i
end

puts numeros.reverse
