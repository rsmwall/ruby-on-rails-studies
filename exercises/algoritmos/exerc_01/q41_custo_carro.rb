# O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do
# distribuidor e dos impostos (aplicados ao custo de fábrica). Supondo que a percentagem do distribuidor
# seja de 28% e os impostos de 45%, escreva um algoritmo que leia o custo de fábrica de um carro e
# escreva o custo ao consumidor.

print 'Custo de fabrica: '
c_fabrica = gets.chomp.to_f

distribuidor = c_fabrica * 0.28
impostos = c_fabrica * 0.45

puts "Custo ao consumidor: R$#{(c_fabrica + distribuidor + impostos).round(2)}"
