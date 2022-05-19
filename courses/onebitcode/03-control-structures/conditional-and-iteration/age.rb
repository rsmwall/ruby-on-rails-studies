result = ''

loop do
  puts result
  puts 'Selecione uma das seguintes opcoes:'
  puts '1 - Descobrir a idade de uma pessoa;'
  puts '0 - Sair.'
  print 'Opção: '

  STDOUT.flush
  option = gets.chomp.to_i

  if option == 1
    print 'Digite o ano de nascimento: '
    STDOUT.flush
    year_of_birth = gets.chomp.to_i
    print 'Digite o ano atual: '
    STDOUT.flush
    current_year = gets.chomp.to_i
    age = current_year - year_of_birth
    result = "Quem nasceu no ano #{year_of_birth}, tem #{age} anos em #{current_year}"
  elsif option == 0
    break if option == 0
  else
    result = 'Opção Inválida'
  end

  system "clear"
end
