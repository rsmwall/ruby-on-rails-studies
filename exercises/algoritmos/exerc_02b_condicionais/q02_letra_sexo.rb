# Leia uma letra, verifique se letra é "F" ou "M" e escreva F - Feminino, M - Masculino, Sexo Inválido.

print 'Sexo: '
letra = gets.chomp.downcase

case letra
when 'f' then puts 'F - Feminino'
when 'm' then puts 'M - Masculino'
end
