first_lambda = lambda {puts "my first lambda"}
first_lambda.call

# outra sintaxe mais amigavel

first_lambda = -> {puts "my first lambda"}
first_lambda.call

# lambda com parametros

first_lambda = -> (names) {names.each {|name| puts name} }
names = ['joao', 'maria', 'pedro']
first_lambda.call(names)

# lamda de varias linhas - nao usar abreviada

my_lambda = lambda do |numbers|
  index = 0
  puts "Numero atual + Proximo numero"
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)

# lambda como argumento

def foo(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end

first_lambda = -> {puts "my first lambda"}
second_lambda = -> {puts "my second lambda"}

foo(first_lambda, second_lambda)
