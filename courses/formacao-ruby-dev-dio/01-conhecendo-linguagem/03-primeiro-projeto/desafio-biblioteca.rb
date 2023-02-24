# 1. receber nome e sobrenome do usuario
# 2. receber a idade
# 3. imprimir na mesma frase

# recebendo dados

print "Digite seu nome: "
nome = gets.chomp

print "Digite seu sobrenome: "
sobrenome = gets.chomp

print "Digite sua idade: "
idade = gets.chomp.to_i

# imprimindo dados

puts "O(A) usuário(a) #{nome} #{sobrenome} possui #{idade} anos."