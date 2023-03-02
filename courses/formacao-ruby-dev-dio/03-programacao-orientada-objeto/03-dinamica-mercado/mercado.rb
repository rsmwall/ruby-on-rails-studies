class Mercado
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end 

  def comprar
    puts "Voce comprou o item #{@nome}, como valor de #{@preco} reais"
  end
end