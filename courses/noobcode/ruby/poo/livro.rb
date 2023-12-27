class Livro
  attr_reader :nome, :ano, :preco

  def initialize(nome, ano, preco)
    @nome = nome
    @ano = ano
    @preco = dar_desconto(preco)
  end

  def mostrar
    puts "Livro: #{@nome}, Ano: #{@ano}, Preco: #{@preco}"
  end

  private

  def dar_desconto(preco)
    if ano < 2000
      preco * 0.9
    else
      preco
    end
  end
end

l1 = Livro.new('Senhor dos aneis', 2000, 50.40)
l1.mostrar
