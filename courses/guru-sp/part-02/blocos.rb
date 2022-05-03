=begin
  
    Blocos

    são pedaços de códigos entre chaves ou (do end) que podem
    ser associados com a invocação de métodos, quase como
    se fossem parâmetros

    chaves são para blocos de uma linha e (do end) para blocos
    de várias linhas

    dentro do método pode-se chamar um bloco usando (yield)
    com um valor
  
=end

# exemplo 01

saudacao {puts 'ola'}

# # exemplo 2 - com parâmetros

saudacao_verbosa('PuneRuby') {puts 'ola'}

# exemplo de uso yield

def chama_bloco
  puts 'Início do método'

  # chamar o bloco

  yield
  yield

  puts 'Fim do método'
end

chama_bloco {puts 'Dentro do método'}

# pode-se prover parâmetros para a chamada yield
# estes serão passados ao bloco

# exemplo yield com parâmetros

def chama_bloco
  yield('ola', 99)
end

chama_bloco {|str, num| puts str + ' ' + num .to_s}

# block_given? retorna true caso o yield executasse um bloco no
# contexto atual

# exemplo block_given?

def tentar
  if block_given?
    yield
  else
    puts 'nenhum bloco'
  end
end

tentar # => "nenhum bloco"
tentar { puts 'ola' } # => "ola"
tentar do puts 'ola' end # => "ola"
