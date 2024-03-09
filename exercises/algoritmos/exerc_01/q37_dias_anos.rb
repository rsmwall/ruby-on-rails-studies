# Leia a idade de uma pessoa expressa em dias e escreva-a expressa em anos, meses e dias.

print 'Dias: '
dias = gets.chomp.to_i

meses = dias / 30
dias %= 30
anos = meses / 12
meses %= 12

puts "Voce digitou #{anos} anos #{meses} meses e #{dias} dias"
