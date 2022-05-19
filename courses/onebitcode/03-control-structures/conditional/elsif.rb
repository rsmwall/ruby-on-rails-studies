dia = "Feriado"

if dia == "Domingo"
  almoco = "Especial"
elsif dia == "Feriado"
  almoco = "Tarde"
else
  almoco = "Normal"
end

puts "O almoco de hoje é #{almoco}"