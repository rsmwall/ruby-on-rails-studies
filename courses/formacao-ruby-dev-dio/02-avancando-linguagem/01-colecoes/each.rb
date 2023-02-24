# array
nomes = ['Maria', 'Joao', 'Mariana']
nome = 'Marcelo'

nomes.each do |nome|
  puts nome
end

puts nome

# hash

cursos = {'curso 1' => 'Ruby', 'curso 2' => 'go'}

cursos.each do |key, value|
  puts "#{key} => #{value}"
end