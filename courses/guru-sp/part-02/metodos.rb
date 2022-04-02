=begin
  
    métodos retornam o valor do último comando executado

    métodos que funcionam como perguntas possuem
    uma interrogação (?) no final

    métodos perigosos ou que modificam o objeto podem
    ser nomeados com exclamação (!) no final (Bnag methods)
  
=end

# método simples

def ola
  puts 'Olá'
end

# uso do método

ola

# método com argumento

def ola1(nome)
  puts 'Olá ' + nome
  return 'sucesso'
end

puts(ola1('Rafael'))

=begin
  
    interpolação é o processo de inserir o resultado de uma
    expressão em uma string lateral

    o operador de interpolação #{...} é avaliado separadamente
  
=end

def mtd(arg1 = 'Dibya', arg2 = 'Shashank', arg3 = 'Shashank')
  "#{arg1}, #{arg2}, #{arg3}."
end

puts mtd
puts mtd('ruby')

# testes de interpolação

puts "100 * 5 = #{100 * 5}"

=begin

    Alias

    quando um método é apelidado (aliased) o novo nome aponta para
    uma cópia do método antigo. se o método antigo for redefinido em
    seguida, o apelido continua invocando o original.
  
=end

def metodo_antigo
  "metodo antigo"
end

alias metodo_novo metodo_antigo

def metodo_antigo
  "metodo antigo melhorado"
end

puts metodo_antigo
puts metodo_novo