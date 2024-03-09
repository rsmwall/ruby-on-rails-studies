# Para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de Renda, que
#   depende do salário bruto (conforme tabela abaixo) e 3% para o Sindicato e que o FGTS corresponde a
#   11% do salário bruto, mas não é descontado (é a empresa que deposita). O salário líquido corresponde
#   ao salário bruto menos os descontos. O programa deverá pedir ao usuário o valor da sua hora e a
#   quantidade de horas trabalhadas no mês.
#   Desconto do IR:
#   o Salário Bruto até R$ 900,00 (inclusive) - isento
#   o Salário Bruto até R$ 1.500,00 (inclusive) - desconto de 5%
#   o Salário Bruto até R$ 2.500,00 (inclusive) - desconto de 10%
#   o Salário Bruto acima de R$ 2.500,00 - desconto de 20%
#   Escreva na tela as informações, dispostas conforme o exemplo abaixo. No exemplo o valor da hora é 5 e
#   a quantidade de hora é 220.

print 'Digite a quantidade de horas trabalhadas: '
horas = gets.chomp.to_f
print 'Digite o valor da hora trabalhada: '
valor_hora = gets.chomp.to_f

salario_bruto = valor_hora * horas

desconto = case salario_bruto
           when 0..900 then 0
           when 901..1500 then 5
           when 1501..2500 then 10
           else 20
           end

desconto_ir = salario_bruto * (desconto.to_f / 100)
sindicato = salario_bruto * 0.03
fgts = salario_bruto * 0.11
salario_liquido = salario_bruto - (desconto_ir + sindicato)

puts "
Salário Bruto: (#{horas} * #{valor_hora}) : R$ #{salario_bruto}
(-) IR (#{desconto}%) : R$ #{desconto_ir}
(-) INSS (3%) : R$ #{sindicato}
FGTS (11%) : R$ #{fgts}
Total de descontos : R$ #{desconto_ir + sindicato}
Salário Liquido : R$ #{salario_liquido}"
