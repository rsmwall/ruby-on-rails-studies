# usando a gem cpf_cnpj receba um cpf e verifica se ele e valido

require 'cpf_cnpj'

print "Digite seu CPF: "
STDOUT.flush
cpf = gets.chomp

puts CPF.valid?(cpf) ? "O CPF: #{cpf} é Válido" : "O CPF: #{cpf} NÃO é Válido"
