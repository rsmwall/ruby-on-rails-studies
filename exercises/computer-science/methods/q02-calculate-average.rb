# Escreva um procedimento que recebe as 3 notas de um aluno por parâmetro e uma letra. 
# Se a letra for A o procedimento calcula a média aritmética das notas do aluno, se for P, 
# a sua média ponderada (pesos: 5, 3 e 2) e se for H, a sua média harmônica. A média calculada 
# também deve retornar por parâmetro.

def average(note1, note2, note3, average_type)
  if average_type == 'A'
    result = (note1 + note2 + note3) / 3
  elsif average_type == 'P'
    result = ((note1 * 5) + (note2 * 3) + (note3 * 2)) / (5 + 3 + 2)
  elsif average_type == 'H'
    result = 3 / ((1 / note1) + (1 / note2) + (1 / note3))
  end
end

note1, note2, note3 = 0.0, 0.0, 0.0
index = 1

print 'Digite a primeira nota: '
STDOUT.flush
note1 = gets.chomp.to_f

print 'Digite a segunda nota: '
STDOUT.flush
note2 = gets.chomp.to_f

print 'Digite a terceira nota: '
STDOUT.flush
note3 = gets.chomp.to_f

print 'Digite o tipo de média desejada (A, P, H): '
STDOUT.flush
average_type = gets.chomp

if average_type != 'A' && average_type != 'P' && average_type != 'H'
  puts "Tipo de Mèdia Inválido!"
else
  result = average(note1, note2, note3, average_type)

  puts "A média (#{average_type}) de (#{note1}, #{note2}, #{note3}) é igual a #{result}!"
end


