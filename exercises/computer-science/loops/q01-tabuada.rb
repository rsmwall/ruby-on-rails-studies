# Faça um programa que receba um número e usando laços de repetição calcule e mostre a tabuada desse número. 

print 'Digite um número: '
STDOUT.flush
value = gets.chomp.to_i

index = 1

while index <= 10
  puts "#{value} * #{index} = #{value * index}"
  index += 1
end
