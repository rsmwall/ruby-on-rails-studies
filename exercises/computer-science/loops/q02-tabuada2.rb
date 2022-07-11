# Faça um programa que mostre as tabuadas dos números de 1 a 10 usando laços de repetição.

first_factor = 1
second_factor = 1
index = 1

while index <= 10

  puts "\n====== TABUADA DO #{index} ======"

  while first_factor <= 10
    puts "\n#{first_factor} * #{second_factor} = #{first_factor * second_factor}"
    first_factor += 1
  end
  first_factor = 1
  second_factor += 1
  index += 1 
end