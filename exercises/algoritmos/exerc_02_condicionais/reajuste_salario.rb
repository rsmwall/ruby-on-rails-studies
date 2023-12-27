# As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores e lhe
# contrataram para desenvolver o programa que calculará os reajustes. Escreva um algoritmo que leia o
# salário de um colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:
# o salários até R$ 280,00 (incluindo) : aumento de 20%
# o salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
# o salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
# o salários de R$ 1500,00 em diante : aumento de 5% Após o aumento ser realizado, informe na tela:
# · o salário antes do reajuste;
# · o percentual de aumento aplicado;
# · o valor do aumento;
# · o novo salário, após o aumento.

print 'Digite o salario atual: '
salario_antigo = gets.chomp.to_f

aumento = case salario_antigo
          when 0..280 then 20
          when 281..700 then 15
          when 701..1500 then 10
          else 5
          end

puts "
Salario atual: #{salario_antigo}
Aumento: #{aumento}%
Valor do aumento: #{salario_antigo * (aumento.to_f / 100)}
Novo salario: #{salario_antigo + salario_antigo * (aumento.to_f / 100)}"
