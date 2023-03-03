#Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int

number1 = gets.to_i
number2 = gets.to_i

#TODO: Crie as condições necessárias para verificar qual número é maior
#e print no console com a frase

maior = number2
menor = number2

if number2 > number1
  maior = number2
  menor = number1
else
  maior = number1
  menor = number2
end

puts "O número #{maior} é o maior e o #{menor} é o menor"