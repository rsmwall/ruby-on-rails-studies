# lista de livros
livros = []

# adicionar elemento
livros.push('Memórias Póstumas de Brás Cubas')

# adiconar elemnto em posicao especifica
livros.insert(0, 'Dom casmurro', 'Sargento Milicias')

#acessar elemento
livros[2]
livros[0..2]

livros.first # primeiro elemento
livro.last # ultimo elemento

# tamanho do array
livros.count
livros.length

# saber se esta vazio
livros.empty?

# verificar se elemento ja existe
livros.include?('Iracema')

# excluir elemento
livros.delete_at(0)
livros.pop # exclui o ultimo elemento
livros.shift # exclui o primeiro elemento