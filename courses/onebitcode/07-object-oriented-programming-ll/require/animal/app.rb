# require './animal.rb'     # procura na mesma pasta onde o arquivo é executado
require_relative 'animal'   # procura um arquivo com aquele nome onde o arquivo que o contém esta
require_relative 'cachorro'

puts '--Animal--'
animal = Animal.new
animal.pular

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir