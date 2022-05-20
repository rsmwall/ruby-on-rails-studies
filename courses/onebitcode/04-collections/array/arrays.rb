estados = []

# adiciona novos elementos no final do array
estados.push('Espirito Santo')
estados.push('Minas Gerais', 'Piaui', 'Maranhao')

# adiciona novos elementos na posição indicada
estados.insert(0, 'Acre', 'Amazonas')

# acessando elementos
puts estados[1]          # exibe o elemento do indice indicado
puts estados[2..5]       # exibe os elementos no intervalo indicado
puts estados[-2]         # numeros negativos exibem elementos de uma contagem inversa
puts estados[-3..-1]     # intervalo de contagem inversa
puts estados.first       # exibe o primeiro elemento
puts estados.last        # exibe o ultimo elemento

# obtendo informacoes
puts estados.count       # numero de elementos
puts estados.length      # numero de elementos

# saber se o array esta vazio
puts estados.empty?

# verificar se um elemento esta presente
puts estados.include?('Piaui')

# excluindo elementos
estados.delete_at('Acre') # deleta o elemento mencionado
estados.pop               # deleta o ultimo elemento
estados.shift             # deleta o primeiro elemento
