class Instrumento
  def escrever
    puts 'escrevendo'
  end
end

class Teclado < Instrumento
  def escrever
    puts 'escrevendo com teclado'
    super # fazer com que o metodo da classe pai ainda seja chamado
  end
end

class Lapis < Instrumento
  def escrever
    puts 'escrevendo a lapis'
  end
end

class Caneta < Instrumento
  def escrever
    puts 'escrevendo a caneta'
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

lapis.escrever
caneta.escrever
teclado.escrever