require_relative './animal.rb'
require_relative './gato.rb'

class Cachorro < Animal
  def latir
    'au au'
  end
end

cachorro = Cachorro.new

puts cachorro.latir
puts cachorro.dormir