# Calcule a quantidade de dinheiro gasta por um fumante. Dados de entrada: o número de anos que ele
# fuma, o no de cigarros fumados por dia e o preço de uma carteira (1 carteira tem 20 cigarros).

print 'Anos: '
anos = gets.chomp.to_i

print 'No de cigarros por dia: '
cigarros = gets.chomp.to_i

print 'Valor: '
valor = gets.chomp.to_f

valor_unitario = valor / 20
valor_diario = valor_unitario * cigarros
valor_final = (anos * 365) * valor_diario

puts "Valor total = R$#{valor_final}"
