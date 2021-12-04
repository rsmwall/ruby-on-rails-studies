# Leia 2 (dois) números, verifique e escreva o menor e o maior entre os números lidos

print "Digite o primeiro valor: "
num1 = gets.chomp.to_i

print "Digite o segundo valor: "
num2 = gets.chomp.to_i

if num1 > num2
    puts "O maior número é #{num1}!"
    puts "O menor número é #{num2}!"
else
    puts "O maior número é #{num2}!"
    puts "O menor número é #{num1}!"
end