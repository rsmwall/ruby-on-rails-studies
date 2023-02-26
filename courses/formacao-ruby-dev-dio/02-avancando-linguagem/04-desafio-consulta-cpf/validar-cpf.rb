require 'cpf_cnpj'

def verify_cpf(number)
  if CPF.valid?(number)
    "válido"
  else
    "inválido"
  end
end

print 'Digite o seu CPF (apenas numeros): '
number = gets.chomp

puts "O CPF digitado (#{number}) é #{verify_cpf(number)}"