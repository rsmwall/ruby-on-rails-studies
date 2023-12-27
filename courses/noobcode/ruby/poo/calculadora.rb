class Calculadora
  def somar(*args)
    lista = []
    lista.push(*args)
    lista.sum
  end
end

c1 = Calculadora.new
puts c1.somar(2, 5, 7, 19)
