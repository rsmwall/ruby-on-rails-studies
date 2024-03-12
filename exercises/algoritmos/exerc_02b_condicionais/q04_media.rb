# frozen_string_literal: true

# Leia 2 (duas) notas parciais de um aluno, calcule a média e escreva a mensagem:
# o "Aprovado", se a média alcançada for maior ou igual a sete;
# o "Reprovado", se a média for menor do que sete;
# o "Aprovado com Distinção", se a média for igual a dez.

notas = []

2.times do
  print 'Nota: '
  notas << gets.chomp.to_f
end

media = notas.sum / 2

situacao =
  if media == 10 then 'Aprovado com Distincao'
  elsif media < 7 then 'Reprovado'
  elsif media >= 7 then 'Aprovado'
  end

puts situacao
