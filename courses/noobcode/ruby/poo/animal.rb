require_relative 'module'

class Animal
  include Comunica
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class Cachorro < Animal
  attr_reader :raca

  def initialize(nome, raca)
    super(nome)
    @raca = raca
  end

  def comunicar
    puts 'au au'
  end
end

a1 = Cachorro.new('bob', 'golden')
a1.comunicar