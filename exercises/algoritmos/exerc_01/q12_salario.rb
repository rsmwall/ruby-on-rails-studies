# Leia o salário de um trabalhador e escreva seu novo salário com um aumento de 25%.

print 'Salario: '
salario = gets.chomp.to_f

puts "Novo salario: R$#{(salario + (salario * 0.25)).round(2)}"
