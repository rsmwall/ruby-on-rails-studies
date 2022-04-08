=begin
  
Faça um programa que receba o código correspondente ao cargo de um
funcionário e seu salário atual e mostre o cargo, o valor do aumento e seu novo
salário. Os cargos estão na tabela abaixo.

Código Cargo Percentual

1       Escriturário      50%
2       Secretário        35%
3       Caixa             20%
4       Gerente           10%
5       Diretor      Não tem aumento
  
=end

cargos = {
  1 => ['Escriturário', 50],
  2 => ['Secretário', 35],
  3 => ['Caixa', 20],
  4 => ['Gerente', 10],
  5 => ['Diretor', nil]
}

print "Digite o código do cargo: "
STDOUT.flush
codigo = gets.chomp.to_i

puts "\nO cargo selecionado é #{cargos[codigo][0]}!"

print "\nDigite o salário atual do cargo: "
STDOUT.flush
salario = gets.chomp.to_f

novo_salario = (salario + (salario * (cargos[codigo][1].to_f / 100)))

puts cargos[codigo][1] != nil ? "O novo salário é R$ #{novo_salario.round(2)}!"
: "O salário permanece sendo R$ #{salario}, este cargo não terá aumento!"