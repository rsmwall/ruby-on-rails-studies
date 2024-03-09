# Leia um valor em real (R$), calcule e escreva 70% deste valor.

print 'Valor: '
valor = gets.chomp.to_f

puts "Novo valor: R$#{(valor * 0.7).round(2)}"
