# criar hash
animais = Hash.new
animais = {ave: "tucano", mamifero: "cachorro", reptil: "lagarto"}

# adicionar novos valores
animais[:aves2] = "papagaio"

# retornar as chaves do hash
animais.keys

# retornar os valores do hash
animais.values

# excluir elemento
animais.delete(:ave)

# saber se esta vazio
animais.empty?