# Leia uma temperatura em °C, calcule e escreva a equivalente em °F. (t°F = (9 * t°C + 160) / 5)

print 'Graus (C): '
graus = gets.chomp.to_f

puts "Graus: #{(9 * graus + 160) / 5} F"
