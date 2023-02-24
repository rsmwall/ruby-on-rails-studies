# analise um dia da semana
# se esse dia for domingo imprimir que almoco e especial

dia = 'feriado'

if dia == "domingo" # --> comparacao
  almoco = 'especial'
elsif dia == "feriado"
  almoco = "mais tarde"  
else
  almoco = 'normal'
end

puts "Hoje o almoco sera #{almoco}"