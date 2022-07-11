=begin
  
  Uma loja tem tem uma política de descontos de acordo com o valor da compra do cliente. Os 
  descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00 o cliente ganha 1% 
  de desconto cumulativo até 25%. 

  Por exemplo: R$500 = 1% || R$600,00 = 2% … etc…

  Faça um programa que exiba essa tabela de descontos no seguinte formato:  

  Valordacompra – porcentagem de desconto – valor final
  
=end

value = 500.0
discount = 1.0

puts "Valor Compra || % Desconto || Valor Final"

while discount <= 25
  puts "   R$#{value}   ||   #{discount}%   ||   R$#{value - ((discount / 100) * value)}"
  value += 100
  discount += 1
end  
