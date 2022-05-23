# dado o seguinte hash, descubra o maior valor e imprima a chave e o valor

hash = {a: 10, b: 30, c: 20, d: 55, e:15}
maior_valor = hash[:a]

hash.each do |chave, valor|
  maior_valor = valor if valor > maior_valor
end

hash.each do |chave, valor|
  puts "Maior elemento = Chave: #{chave} => Valor: #{valor}" if valor == maior_valor
end
