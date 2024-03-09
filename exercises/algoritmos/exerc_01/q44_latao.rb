# Sabendo que latão é constituído de 70% de cobre e 30% de zinco, escreva um algoritmo que calcule a
# quantidade de cada um desses componentes para se obter certa quantidade de latão (em kg), informada
# pelo usuário.

print 'Qtd de latao: '
qtd_latao = gets.chomp.to_f

cobre = qtd_latao * 0.7
zinco = qtd_latao - cobre

puts "Qtd Latao: #{qtd_latao.round(2)} Kg, Cobre: #{cobre.round(2)} Kg, Zinco: #{zinco.round(2)} Kg"
