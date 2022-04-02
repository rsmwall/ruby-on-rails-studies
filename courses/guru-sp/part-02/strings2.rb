=begin

    Métodos da Classe String

    
    reverse - dá uma versão invertida da string
    
    length - dá o número de caracteres (inclui espaços)

    upcase - altera letras minúsculas para maiúsculas

    downcase - oposto da upcase

    swapcase - altera a caixa de cada letra na string 

    capitalize - troca a primeira letra para maiúscula

    slice - dá uma substring de uma string maior

=end

# teste 01

def diz_boanoite(nome)
  result = "Boa noite #{nome}"
  return result
end

puts diz_boanoite('Satish')

# teste 01 modificado

def diz_boanoite2(nome)
  "Boa noite #{nome}"
end

puts diz_boanoite2('Talim')

=begin
 
    String.eql? - testa se duas strings tem o conteúdo idêntico
                  Retorna o mesmo resultado que ==
    
    String.equal? - testa se duas strings são o mesmo objeto
  
=end

s1 = 'Rafael'
s2 = 'Rafael'
s3 = s1

if s1 == s2
  puts 'Ambas strings têm o mesmo conteúdo'
else
  puts 'Ambas strings não tem o mesmo conteúdo'
end

if s1.eql?(s2)
  puts 'Ambas strings têm o mesmo conteúdo'
else
  puts 'Ambas strings não tem o mesmo conteúdo'
end

if s1.equal?(s2)
  puts 'Ambas strings são objetos idênticos'
else
  puts 'Ambas strings não são objetos idênticos'
end

if s1.equal?(s3)
  puts 'Ambas strings são objetos idênticos'
else
  puts 'Ambas strings não são objetos idênticos'
end

# uso de %w para arrays

# exemplo

nomes1 = [ 'marcelo', 'hugo', 'william', 'ricardo', 'rafael' ]
puts nomes1[0] # marcelo
puts nomes1[4] # rafael

# mesmo exemplo mas usando %w

nomes2 = %w{ marcelo hugo william ricardo rafael }
puts nomes2[0] # marcelo
puts nomes2[4] # rafael

# o simbolo :capitalize sinaliza uma chamada para o método capitalize
# pode ser substituido por outros métodos como upcase, downcase, etc

puts nomes2.map(&:capitalize)