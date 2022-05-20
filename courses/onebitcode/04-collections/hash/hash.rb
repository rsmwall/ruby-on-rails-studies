capitais = Hash.new

capitais = {
  acre: 'Rio Branco',
  piaui: 'Teresina'
}

# a chave do hash pode ser qualquer tipo de dado
hash = {
  1 => 'Chave do tipo inteiro',
  true => 'Chave do tipo booleano',
  [1,2,3,] => 'Chave do tipo array'
}

# adicionando itens
capitais[:minas_gerais] = 'Belo Horizonte'

# retornar todas as keys do hash
puts capitais.keys

# remover um elemento do hash
capitais.delete(:acre)

# obtendo informacoes
puts capitais.size   # verifica o tamanho do hash
puts capitais.empty? # verifica se o hash esta vazio
