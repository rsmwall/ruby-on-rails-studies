# class Dog
#   def name
#     @name
#   end
# end

# doguinho = Dog.new
# puts doguinho.name

# ----------------------------------

# class Dog
#   def name
#     @name
#   end

#   def set_name(name)
#     @name = name
#   end
# end

# doguinho = Dog.new
# doguinho.set_name('Spike')

# puts doguinho.name

# ---------------------------------

# class Dog
#   def name
#     @name
#   end

#   def name=(name)
#     @name = name
#   end
# end

# doguinho = Dog.new
# # doguinho.name=('Mike')
# doguinho.name = 'Mike'
# puts doguinho.name

# ---------------------------------

# attr_writer: substitui um metodo que apenas seta um valor

# class Dog
#   attr_writer :name
#   def name
#     @name
#   end
# end

# doguinho = Dog.new
# doguinho.name = 'Spike'
# puts doguinho.name

# ----------------------------------

# attr_reader: substitui um metodo que apenas leia a variavel

# class Dog
#   attr_writer :name, :age
#   attr_reader :name, :age
# end

# doguinho = Dog.new
# doguinho.name = 'Mike'
# doguinho.age = '1 ano'
# puts doguinho.name
# puts doguinho.age

# ---------------------------------

class Dog
  attr_accessor :name, :age
end

spike = Dog.new
spike.name = 'Spike'
spike.age = '2 anos'

mike = Dog.new
mike.name = 'Mike'
mike.age = '1 ano'

puts spike.name
puts spike.age

puts mike.name
puts mike.age