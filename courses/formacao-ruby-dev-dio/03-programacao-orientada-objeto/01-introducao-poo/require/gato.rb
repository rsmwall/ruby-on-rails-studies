# classe gato filha de animal
class Gato < Animal
  def miar
    'miau'
  end
end

gato = Gato.new

puts gato.miar