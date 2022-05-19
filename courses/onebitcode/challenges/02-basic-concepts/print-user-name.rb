# receba e imprima o nome e idade do uruário

print "Digite o seu nome: "
STDOUT.flush
nome = gets.chomp

print "Digite sua idade: "
STDOUT.flush
idade = gets.chomp.to_i

puts "Olá #{nome} sua idade é #{idade}"