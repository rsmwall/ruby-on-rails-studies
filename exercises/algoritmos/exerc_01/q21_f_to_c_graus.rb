# Leia uma temperatura em °F, calcule e escreva a equivalente em °C. (t°C = (5 * t°F - 160) / 9).

print 'Graus (C): '
graus = gets.chomp.to_f

puts "Graus: #{(5 * graus - 160) / 9} F"
