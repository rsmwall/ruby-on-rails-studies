# Leia a idade de uma pessoa expressa em anos, meses e dias e escreva-a expressa apenas em dias.

print 'Digite os anos: '
anos = gets.chomp.to_i

print 'Digite os meses: '
meses = gets.chomp.to_i

print 'Digite os dias: '
dias = gets.chomp.to_i

meses += anos * 12
dias += meses * 30

puts "A idade eh #{dias} dias"
