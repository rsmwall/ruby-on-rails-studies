# Leia o valor do dólar e um valor em dólar, calcule e escreva o equivalente em real (R$).

print 'Valor do Dolar: '
dolar = gets.chomp.to_f

print 'Valor a converter: '
dinheiro = gets.chomp.to_f

puts "US$ #{dolar} em real eh R$ #{(dinheiro * dolar).round(2)}"
