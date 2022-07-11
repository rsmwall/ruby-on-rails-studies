=begin
  
  Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
    a) A quantidade de pessoas em cada faixa etária;
    b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 

      Até 15 anos
      De 16 a 30 anos
      De 31 a 45 anos
      De 46 a 60 anos
      Acima de 61 anos
  
=end

group1 = 0
group2 = 0
group3 = 0
group4 = 0
group5 = 0

index = 1

while index <= 15
  print "Digite a idade da pessoa #{index}: "
  STDOUT.flush
  age = gets.chomp.to_i

 if age <= 15
  group1 += 1
 elsif age <= 30
  group2 += 1
 elsif age <= 45
  group3 += 1
 elsif age <= 60
  group4 += 1
 elsif age >= 61
  group5 += 1
 end

 index += 1
end

puts 'Faixas Etárias'
puts "Até 15 anos: #{group1}"
puts "De 16 a 30 anos: #{group2}"
puts "De 31 a 45 anos: #{group3}"
puts "De 46 a 60 anos: #{group4}"
puts "Acima de 61 anos: #{group5}"