puts "Digite seu nome:"
nome = gets.chomp
puts "O seu nome é: " + nome

puts "================="

puts nome.inspect

puts "Digite seu salário:"
salario = gets.chomp.to_f

puts "Seu salário atualizado é " + (salario * 1.10).to_s