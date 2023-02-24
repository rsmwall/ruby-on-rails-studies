# receber 3 numeros do usuario
# exibir os 3 numeros elevados a 3

numeros = []
count = 0

3.times do
  print "Digite o numero #{count+1}: "
  numeros[count] = gets.chomp.to_i
  count +=1
end

numeros_original = numeros

numeros.map! do |num|
  num ** 3
end

puts "\nNumeros digitados: #{numeros_original}"
puts "Numeros elevados a 3: #{numeros}"