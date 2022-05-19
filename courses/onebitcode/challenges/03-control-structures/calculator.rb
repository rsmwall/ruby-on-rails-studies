# crie uma 'calculadora' em que o usuario possa somar, subtrair
# multiplicar e dividir dois numeros usando estruturas de controle

result = ''
numbers = ''
number1, number2 = 0.0, 0.0
menu = <<STRING
  -- CALCULADORA --\n
  1. Adicionar números
  2. Somar
  3. Subtrair
  4. Multiplicar
  5. Dividir
  0. Sair\n
STRING

loop do
  puts result
  puts menu
  puts numbers
  print "Escolha uma opcao: "
  STDOUT.flush
  option = gets.chomp.to_i

  case option
  when 1
    print 'Digite o primeiro numero:'
    STDOUT.flush
    number1 = gets.chomp.to_i
    print 'Digite o segundo numero: '
    STDOUT.flush
    number2 = gets.chomp.to_i
    numbers = "Os números digitados são #{number1} e #{number2}"
  when 2 
    result = "A soma é igual a #{number1 + number2}\n"
  when 3
    result = "A subtração é igual a #{number1 - number2}\n"
  when 4
    result = "A multiplicação é igual a #{number1 * number2}\n"
  when 5
    result = "A divisão é igual a #{number1 / number2}\n"
  when 0
    break if option == 0
  else
    result = "Opção Inválida\n"
  end

  system "clear"
end
