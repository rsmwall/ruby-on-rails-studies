array1 = []
array2 = []
array3 = []

valor1 = gets.chomp
valor2 = gets.chomp

array1 = valor1.split(',')
array2 = valor2.split(',')

array1.map! do |num|
  num.to_i
end

array2.map! do |num|
  num.to_i
end

indice = 0
indice2 = 0

while indice < array2.length
  array3[indice2] = array1[indice] + array2[indice]
  indice += 2
  indice2 += 1
end

array3 = array3.join(',')

print array3