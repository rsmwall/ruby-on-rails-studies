# Faça um programa que leia um valor n, inteiro e positivo, calcule e mostre a seguinte soma: S = 1 + 1/2 + 1/3 + 1/4 + … + 1/n.

print 'Digite o valor: '
STDOUT.flush
value = gets.chomp.to_i

index = 2
sum = 1.0

while index <= value
  sum += 1.0 / index
  index += 1
end

puts "A soma final é igual a = #{sum}"