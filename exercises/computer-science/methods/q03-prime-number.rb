# Faça uma função que recebe por parâmetro um valor inteiro e positivo e retorna o valor 
# lógico Verdadeiro caso o valor seja primo e Falso em caso contrário.

def test_number(number)
  result = case
  when number == 0 || number == 1 then false
  when number != 2 && number % 2 == 0 then false
  when number != 3 && number % 3 == 0 then false
  when number != 5 && number % 5 == 0 then false
  when number != 7 && number % 7 == 0 then false
  else true
  end
end

print 'Digite um número: '
STDOUT.flush
number_user = gets.chomp.to_i

prime_verify = test_number(number_user)
puts "\nNúmero #{number_user} || Primo: #{prime_verify}"