# Arrays

# indice do array inicia em 0

# array vazio

var1 = []
puts var1[0]

# array armazenando apenas um número

var2 = [5]
puts var2[0]

# array armazenando duas strings

var3 = ['Olá', 'Tchau']
puts var3[0]
puts var3[1]

sabor = 'manga'

# array onde os elementos apontam para três

# objetos - um float, uma string e um array

var4 = [80.5, sabor, [true, false]]
puts var4[2]

# uma vírgula no final é ignorada

name = ['Satish', 'Talim', 'Ruby', 'Java']
puts name[0]
puts name[1]
puts name[2]
puts name[3]

# o próximo tem valor nil

puts name[4]

# pode-se adicionar mais elementos também

name[4] = 'Pune'
puts name[4]

# pode-se adicionar qualquer coisa

name[5] = 4.33
puts name[5]

# pode-se adicionar um array a um arrray

name[6] = [1, 2 ,3]
puts name[6]

# alguns métodos da classe array

newarr = [45, 23, 1, 90]
puts newarr.sort      # ordem
puts newarr.length    # tamanho
puts newarr.first     # primeiro
puts newarr.last      # último

=begin
  
    o método each (iterador) - extrai cada elemento em lang

    do end é um bloco em código

    a variável lang se refere a cada item do array a medida que ele é
    iterado no loop
  
=end

linguas = ['Portugues', 'Ingles', 'Espanhol']

# a variável dentro das barras verticais ( | ), se refere a cada item
# do array a medida que ele é iterado pelo loop

linguas.each do |lang|
  puts "Eu amo " + lang
  puts 'você não?'
end

# apaga uma entrada no meio e desloca o restante das entradas

linguas.delete('Ingles')

linguas.each do |lang|
  puts "Eu amo " + lang
  puts 'você não?'
end

=begin
  
    se você da ao return múltiplos parâmetros
    o método os retornará em um array
    o método times da classe Integer itera num vezes
    passando para num os valores de 0 a num-1
  
=end

def mtdarry
  10.times do |num|
    quadrado = num * num
    return num, quadrado if num > 5
  end
end

# usando atribuição paralela para colocar o valor do retorno

num, quadrado = mtdarry
puts num
puts quadrado

=begin
  
    Atribuição Paralela

    Ruby permite ter uma lista de valores à esquerda separados por vírgula,
    uma vez que ele vê mais de uma valor à direita em uma atribuição inicia-se
    a atribuição paralela.

    Ruby verifica todos os valores à direita da esqueda para a direita e coleta
    eles em um array (caso já não sejam um).

    Esse array é retornado pela atribuição como um todo.

    Se o lado esquerdo só tiver um elemento o array é atribuído a ele.
  
=end

a = 1, 2, 3, 4   # a => [1, 2, 3, 4]
b = [1, 2, 3, 4] # b => [1, 2, 3, 4]

=begin
  
    se o ruby encontrar vírgula do lado esquerdo, ele casa os valores
    do lado direto com os sucessivos elementos do lado esquerdo

    os elementos restantes são descartados
  
=end

a,b = 1, 2, 3, 4 # a == 1, b == 2
c, = 1, 2, 3, 4  # c == 1

# converter objetos em array

str = 'ola\mundo'
puts Array(str) # ["ola\mundo"]
