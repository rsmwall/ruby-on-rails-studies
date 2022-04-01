# gets e chomp

=begin
    
    STDOUT é uma constante global que é a saída padrão
    do atual programa.

    flush limpa qualquer dado armazenado na área de armazenamento temporário de dados

    (O uso de STDOUT e flush não é obrigatório mas recomendado).

    gets recebe uma única linha de dados de entrada padrão

    chomp é um método de strings e retorna apenas as strings do que veio do teclado
    
=end

puts 'Em qual cidade você está?'
STDOUT.flush
cidade = gets.chomp
puts 'A cidade é ' + cidade
