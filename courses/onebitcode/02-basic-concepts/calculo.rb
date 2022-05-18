print "Digite um numero inteiro: "
STDOUT.flush
num1 = gets.chomp.to_i

print "DIgite outro numero inteiro: "
STDOUT.flush
num2 = gets.chomp.to_i

soma = num1 + num2

puts "A soma é igual a #{soma}"
