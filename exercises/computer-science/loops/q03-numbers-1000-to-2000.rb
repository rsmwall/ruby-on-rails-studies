# Faça um programa que verifique e mostre os números entre 1.000 e 2.000 que, quando divididos por 11 produzam resto igual a 2.

index = 1000

while index <= 2000
  puts index if index % 11 == 2
  index += 1
end