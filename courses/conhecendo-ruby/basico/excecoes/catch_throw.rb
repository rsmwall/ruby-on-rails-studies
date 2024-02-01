def get_input
  print 'Digite algo (numero termina): '
  resp = gets

  throw :end_of_response, resp if resp.chomp.match?(/^\d+$/)

  resp
end

num = catch(:end_of_response) do
  while true
    get_input
  end
end

puts "Terminado com #{num}"
