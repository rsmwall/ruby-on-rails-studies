# Leia 3 notas de um aluno e o peso de cada nota, calcule e escreva a média ponderada.

notas = [[], []]

3.times do
  print 'Nota: '
  notas[0] << gets.chomp.to_f

  print 'Peso: '
  notas[1] << gets.chomp.to_i
end

i = 0
nota_peso = []
3.times do
  nota_peso << notas[0][i] * notas[1][i]
  i += 1
end

puts "Media ponderada: #{(nota_peso.sum / 3).round(2)}"
