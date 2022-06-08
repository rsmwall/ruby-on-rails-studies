# exemplo 1

5.times {puts 'Exec the block'}

# exemplo 2

sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number}
puts sum

# exemplo 3

foo = {2 => 3, 4 => 5}
foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts "---"
end

# exemplo 4 - metodo com yield

def foo
  # chama o bloco
  yield
  yield
end

foo { puts "Exec the block" }

# exemplo 5 - verificar se ha bloco

def foo
  if block_given?
    # chama o bloco
    yield
  else
    puts 'sem parametro de tipo de bloco'
  end
end

foo
foo {puts 'com parametro de tipo de bloco'}

# exemplo 6 - bloco como parametro

def foo(name, &block)
  @name = name
  block.call
end

foo('Rafael') {puts "Hello #{@name}"}

# exempo 7 - bloco de varias linhas como parametro

def foo(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = {2 => 2, 3 => 3, 4 => 4}

foo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts '---'
end
