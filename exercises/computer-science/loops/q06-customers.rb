# Uma loja deseja cadastrar 5 clientes e verificar se o faturamento da loja foi superior a 
# loja B (faturamento = 54000).  Se o faturamento atingir esse valor mostre na tela uma 
# mensagem contendo em quanto foi superado o faturamento.

index = 1
invoicing = 0

while index <= 5
  print "Digite o valor da compra do cliente #{index}: "
  STDOUT.flush
  invoicing += gets.chomp.to_i
  index += 1
end

if invoicing > 54000
  excess = invoicing - 54000
  puts "O faturamento atingiu a meta com excedente de R$ #{excess}!"
else
  puts "O faturamento não atingiu a meta!"
end
