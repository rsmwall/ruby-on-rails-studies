# frozen_string_literal: true

# Leia o preço de três produtos e informe qual produto deve ser comprado, sabendo que a decisão é
# sempre pelo mais barato.

precos = []

3.times do
  print 'Preco: '
  precos << gets.chomp.to_f
end

puts precos.min
