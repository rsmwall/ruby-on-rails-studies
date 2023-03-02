# classe animal
class Animal
  def dormir
    'zzzz'
  end

  def pular
    'toin, toin'
  end
end

# classe gato filha de animal
class Gato < Animal
  def miar
    'miau'
  end
end

gato = Gato.new

puts gato.miar
puts gato.dormir
puts gato.pular