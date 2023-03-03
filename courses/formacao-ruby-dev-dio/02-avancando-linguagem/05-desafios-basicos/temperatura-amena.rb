#Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int

number = gets.to_i
num = 25

#TODO: Crie as condições necessárias para verificar se a variável
#é maior que a constante e print no console a frase

if number > num
  puts "Está calor!"
end