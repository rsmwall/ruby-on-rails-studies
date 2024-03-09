# Leia 3 números, calcule e escreva a média dos números.

numeros = []

3.times do
  print 'Numeros: '
  numeros << gets.chomp.to_f
end

puts "Media = #{numeros.sum / 3}"
