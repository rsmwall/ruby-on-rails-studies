# crian um lambda
first_lambda = lambda {puts 'meu primeiro lambda'}
first_lambda.call

# outra sintaxe
second_lambda = -> {puts 'meu segundo lambda'}
second_lambda.call

# com parametros
third_lambda = -> (names) { names.each { |name| puts name } }
names = ['carlos', 'catarina', 'leticia']
third_lambda.call(names)

# lambda de varias linhas
meu_lambda = lambda do |numbers|
  i = 0
  puts 'Número atual + Pŕoximo numero'
  numbers.each do |number|
    return if numbers[i] == numbers.last
    puts "(#{numbers[i]}) + (#{numbers[i + 1]})"
    puts number[i] + numbers[i + 1]
    i += 1
  end
end

numbers = [1, 2, 3, 4]
meu_lambda.call(numbers)

# lambda como parametro
def teste(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end

first_lambda = lambda {puts 'my first lambda'}
second_lambda = -> {puts 'my second lambda'}

teste(first_lambda, second_lambda)