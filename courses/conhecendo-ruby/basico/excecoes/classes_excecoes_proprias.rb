# frozen-string-literal: true

# NameNotEqual class
class NameNotEqual < StandardError
  def initialize(current, expected)
    super "Voce digitou um nome invalido (#{current})! Era esperado #{expected}"
  end
end

begin
  correct = 'Rafael'
  print 'Digite seu nome: '
  name = gets.chomp

  raise NameNotEqual.new(name, correct) if name != correct

  puts 'Digitou correto!'
rescue NameNotEqual => e
  puts e
end
