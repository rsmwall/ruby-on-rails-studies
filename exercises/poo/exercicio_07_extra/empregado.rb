# classe empregado
class Empregado
  def initialize
    @salario = 500
  end

  def calcular_salario
    @salario
  end
end

# classe diarista
class Diarista < Empregado
  def calcular_salario
    super / 30.0
  end
end

# classe horista
class Horista < Empregado
  def calcular_salario
    super / 24.0
  end
end

emp = Empregado.new
dia = Diarista.new
hor = Horista.new

puts emp.calcular_salario
puts dia.calcular_salario
puts hor.calcular_salario
