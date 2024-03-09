# Leia 2 (duas) frações (numerador e denominador), calcule e escreva a soma destas frações, escrevendo o resultado em forma de fração.

print 'Primeira fracao (n/n): '
fracao1 = gets.chomp

print 'Segunda fracao (n/n): '
fracao2 = gets.chomp

num1 = fracao1[0].to_i
den1 = fracao1[2].to_i
num2 = fracao2[0].to_i
den2 = fracao2[2].to_i

if den1 == den2
  den_total = den1
  num_total = num1 + num2
else
  den_total = den1 * den2
  num_tot1 = den1 * num2
  num_tot2 = den2 * num1
  num_total = num_tot1 + num_tot2
end

puts "A soma de #{fracao1} + #{fracao2} = #{num_total}/#{den_total}"
