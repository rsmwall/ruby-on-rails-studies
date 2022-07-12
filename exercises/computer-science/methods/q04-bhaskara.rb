# Faça um procedimento que recebe por parâmetro os valores necessário para o cálculo 
# da fórmula de báskara e retorna, também por parâmetro, as suas raízes, caso seja possível calcular.

def delta(a, b, c)
  delta = (b ** 2) - 4 * a * c
end

def roots(delta, a, b)
  delta_root = Math.sqrt(delta)
  x1 = ((-1 * b) + delta_root) / (2 * a)
  x2 = ((-1 * b) - delta_root) / (2 * a)

  return x1, x2
end

print 'Digite o valor de A: '
STDOUT.flush
value_a = gets.chomp.to_f

print 'Digite o valor de B: '
STDOUT.flush
value_b = gets.chomp.to_f

print 'Digite o valor de C: '
STDOUT.flush
value_c = gets.chomp.to_f

if value_a != 0
  delta_value = delta(value_a, value_b, value_c)
  
  if delta_value > 0
    value_x1, value_x2 = roots(delta_value, value_a, value_b)
    puts `clear`
    puts "O valor de Δ (#{delta_value}) é maior que 0, logo há duas soluções reais."
    puts "X1 = #{value_x1} || X2 = #{value_x2}"
  elsif delta_value == 0
    value_x1, value_x2 = roots(delta_value, value_a, value_b)
    puts `clear`
    puts "O valor de Δ (#{delta_value}) é igual a 0, logo há uma solução real."
    puts "X = #{value_x1}"
  else
    puts `clear`
    puts "O valor de Δ (#{delta_value}) é menor que 0, logo não há solução real."
  end
else
  puts `clear`
  puts "A deve ser diferente de 0!"
end