# block simples
6.times { puts 'execute esse bloco' }

# com parametros
sum = 0
numbers = [2, 4, 6]
numbers.each {|number| sum += number}
puts sum

# multiplas linhas
hash = {2 => 3, 4 => 5}

hash.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end

# chamando block
def teste
  yield
  yield
end

teste {puts 'execute este bloco'}

# saber se ha um bloco
def teste
  if block_given?
    # chama o bloco
    yield
  else
    puts 'sem parametro do tipo bloco'
  end
end

teste
teste {puts 'com parametro do tipo bloco'}

# outra forma de receber bloco como parametro
def teste(name, &block)
  @name = name
  block.call
end

teste('Rafael') {puts "Olá #{@name}"}

# bloco com varias linhas de parametro
def teste(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = {2 => 2, 3 => 3. 4 => 4}

teste(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}" 
  puts "#{key} + #{value} = #{key + value}" 
  puts '---'
end