# Leia 3 (três) números, verifique e escreva o maior entre os números lidos

print "Digite o primeiro valor: "
num1 = gets.chomp.to_i

print "Digite o segundo valor: "
num2 = gets.chomp.to_i

print "Digite o terceiro valor: "
num3 = gets.chomp.to_i

maior = num1

if num2 > maior
    maior = num2
end
if num3 > maior
    maior = num3
end

puts "O maior número é #{maior}!"