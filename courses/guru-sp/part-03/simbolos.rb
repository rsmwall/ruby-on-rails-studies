=begin
  
    Simbolos

    se parecem com variáveis mas com o prefixo dois pontos ( : )
    ex.: :action. :line_itens

    quando usar string ou siimbolo:

    string - quando o conteudo for importante
    symbol - quando a identidade do objeto for importante
      
    simbolos são nomes, portanto se existe um método chamado
    control_movie, automaticamente existe um simbolo :control_movie
  
=end

# exemplo 01

class Test
  puts :Test.object_id.to_s
  def test
    puts :test.object_id.to_s
    @test = 10
    puts :test.object_id.to_s
  end
end

t = Test.new
t.test

# exemplo 02

=begin

    :sim é um simbolo
    simbolos não contêm valores ou objetos como as variávei
    ao invés disso eles são usados como nome consistente no código
    
    nesse exemplo pode-se substituir :sim por 'sim', mas é menos eficiente,
    cada menção do 'sim' cria um novo objeto armazenado separadamente na memória
    enquanto simbolos são referencia unica inicializados apenas uma vez

=end

sabe_ruby = :sim
if sabe_ruby == :sim
  puts 'Você é um rubista'
else
  puts 'Aprenda Ruby'
end