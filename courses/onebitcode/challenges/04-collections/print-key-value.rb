# usando hash, receba 3 chaves com seus valores do usuario, e depois
# imprima a chave e o respectivo valor

elementos = Hash.new
contador = 1

loop do
  print "Digite a chave #{contador}: "
  STDOUT.flush
  chave = gets.chomp
  print "Digite o valor da chave #{contador}: "
  STDOUT.flush
  valor = gets.chomp

  elementos[chave] = valor
  break if contador == 3
  contador += 1
end

elementos.each do |chave, valor|
  puts "Chave: #{chave} => Valor: #{valor}"
end