dia = "Feriado"

if dia == "Domingo"
    almoco = "especial"
elsif dia == "Feriado"
    almoco = "tarde"
else
    almoco = "normal"
end

puts "O almoço hoje é #{almoco}!"