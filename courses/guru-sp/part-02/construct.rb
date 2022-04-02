=begin
  
    em ruby nil e false são interpretados como false
    todo o restante (incluindo true e 0) significam true

    nil é um objeto real

    if else end (se, caso contrário, fim)
  
=end


var = 5

if var > 4
  puts 'A variável é maior que 4'
  puts 'Posso ter muitas declarações aqui'
  if var == 5
    puts 'É possível ter if else alinhados'
  else
    puts 'Muito legal'
  end
else
  puts 'A vaiável não é maior que 4'
  puts 'Posso ter muitas declarações aqui'
end

# exemplo elsif

# exemplo original

puts 'Olá, qual seu nome? '
STDOUT.flush
nome = gets.chomp
puts 'Ola, ' + nome + '.'

if nome == 'Satish'
  puts 'Que nome legal!!!'
else
  if nome == 'Sunil'
    puts 'Outro nome legal!'
  end
end

# exemplo modificado com elsif

puts 'Olá, qual seu nome? '
STDOUT.flush
nome = gets.chomp
puts 'Ola, ' + nome + '.'

if nome == 'Satish'
  puts 'Que nome legal!!!'
elsif nome == 'Sunil'
  puts 'Outro nome legal!'
end

# outra modificação

puts 'Olá, qual seu nome? '
STDOUT.flush
nome = gets.chomp
puts 'Ola, ' + nome + '.'

if nome == 'Satish' || nome == 'Sunil'
  puts 'Que nome legal!!!'
end

=begin

    unless - oposto do if, executa o código apenas
             se a expressão associada é interpretada como
             nil ou false

=end

unless ARGV.length == 2
  puts 'Uso: programa.rb 23 45'
  exit
end

# loops - imprime de 0 a 9

var = 0

while var < 10
  puts var.to_s
  var += 1
end

# operador ternário ?: (alternativa ao if/else)

# exemplo 01

idade = 15

puts (14...20).include?(idade) ? 'adolescente' : 'não é adolescente' # adolescente

# exemplo 02

idade = 23
pessoa = (14...20).include?(idade) ? 'adolescente' : 'não é adolescente'
puts pessoa # não é adolescente

# modificadores de instrução (if ou while) em expressão única

participantes = 2600
puts 'Os registros pararão agora' if participantes > 2500

=begin

    CASE/WHEN

    lista uma série de condiçõese execute a primeira instrução que
    for verdadeira.

=end

ano = 2016

bissexto = case
when ano % 400 == 0 then true
when ano % 100 == 0 then false
else ano % 4 == 0
end

puts bissexto