# Faça um programa que leia três valores (A, B, C) e mostre-os na ordem lida.  Em seguida, mostre-os em ordem crescente e decrescente.

numbers = []
index = 0

while index < 3
  print "Digite o numero #{index + 1}: "
  STDOUT.flush
  numbers[index] = gets.chomp.to_i
  index += 1
end

increasing = numbers.sort
decreasing = increasing.reverse()

print "Ordem de Adição: #{numbers}"
print "\nOrdem Crescente: #{increasing}"
print "\nOrdem DEcrescente: #{decreasing}"
