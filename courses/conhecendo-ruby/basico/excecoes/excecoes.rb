# begin
#   numero = 1
#   string = 'oi'
#   numero + string
# rescue StandardError => e
#   puts "Ocorreu um erro: #{e}"
# end

# omitindo o tipo e verificando a classe

# begin
#   numero = 1
#   string = 'oi'
#   numero + string
# rescue => e
#   puts "Ocorreu um erro do tipo #{e.class}: #{e}"
#   puts msg
# ensure
#   puts 'Lascou tudo.'
# end
# puts 'Fim de programa.'

# retry e backtrace

numero1 = 1
numero2 = 'dois'
begin
  puts numero1 + numero2
rescue => exception
  puts "Ops, problemas aqui (#{exception.class}), vou tentar de novo."
  numero2 = 2
  puts exception.backtrace
  retry
end
