require_relative './produto.rb'
require_relative './mercado.rb'

maca = Produto.new
maca.nome = 'Maçã'
maca.preco = 0.50

Mercado.new(maca.nome, maca.preco).comprar