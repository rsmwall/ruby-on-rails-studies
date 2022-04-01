s = 'Olá Mundo'
x = 10

# definindo uma constante

PI = 3.1416
puts PI

# variaveis locais

minha_string = 'Amo minha cidade'
puts minha_string

#   Conversões { .to_i   .to_f   .to_s }

var1 = 5
var2 = '2'
puts var1 + var2.to_i

# << juntando a uma string

a = 'Olá '
a << 'mundo.
Eu amo esse mundo...'
puts a

=begin

    << marca o início do literal string e inicia na
    próxima linha e termina quando o delimitador é
    repetido em uma linha onnde ele aparece sozinho

=end

a = <<FIM_STR
Essa é a string
E uma segunda linha
FIM_STR
puts a