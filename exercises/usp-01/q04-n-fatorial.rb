=begin
  
    Faça um programa que leia um número N e que indique quantos valores
    inteiros e positivos devem ser lidos a seguir. Para cada número lido, mostre uma
    tabela contendo o valor lido e o fatorial desse valor
  
=end

num = 0
valor_tabelado = []

def calculo_fatorial(num)
  fatorial = 1
  for i in 1..num
    fatorial = fatorial * i
  end
  return fatorial
end

print 'Digite o número de valores que serão inseridos: '
STDOUT.flush
numero_vezes = gets.chomp.to_i

numero_vezes.times do |vez|
  print "Digite o número #{vez + 1}: "
  STDOUT.flush
  num = gets.chomp.to_i
  resultado_fatorial = calculo_fatorial(num)
  
  valor_tabelado[vez] = [num, resultado_fatorial]
end

puts "\nValor original | Rseultado Fatorial"  

numero_vezes.times do |vez|
  puts " #{valor_tabelado[vez][0]} => #{valor_tabelado[vez][1]}"
end
