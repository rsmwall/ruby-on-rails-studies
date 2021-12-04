# Leia o valor do dólar e um valor em dólar, calcule e escreva o equivalente em real (R$)

print "Digite o valor atual do dólar (US$): "
dolar = gets.chomp.to_f

print "Digite a quantidade de dólares: "
qtd_dolar = gets.chomp.to_i

real = dolar * qtd_dolar

puts "O valor final em reais será de R$ %.2f!" %real