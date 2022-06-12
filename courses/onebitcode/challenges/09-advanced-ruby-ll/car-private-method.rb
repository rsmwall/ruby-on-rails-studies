=begin

  Em uma classe chamada Carro, crie um método público chamado get_km que 
  recebe como parâmetro a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”.
  O método get_km deve chamar um método privado com o nome de find_km. Este deve 
  localizar e retornar o casamento de padrão 80km/h.
  No final, imprima este retorno.

=end

class Carro
  def get_km(info)
    find_km(info)
  end

  private

  def find_km(info)
    puts /\d{2}[a-zA-Z]{2}\/[a-zA-Z]/.match(info)
  end
end

carro = Carro.new
carro.get_km('Um fusca de cor amarela viaja a 80km/h')
