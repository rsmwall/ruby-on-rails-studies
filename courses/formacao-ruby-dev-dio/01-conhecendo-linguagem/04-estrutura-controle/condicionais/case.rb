# entrada de mes de nascimento
# analisar diversos casos 

# receber dados

print "Digite o seu mes de nascimento: "
mes = gets.chomp.to_i

# definir casos

case mes
when 1..3 # intervalo
  puts "voce nasceu no primeiro trimestre do ano"
when 4..6 # intervalo
  puts "voce nasceu no segundo trimestre do ano"
when 7..9 # intervalo
  puts "voce nasceu no terceiro trimestre do ano"
when 10..12 # intervalo
  puts "voce nasceu no ultimo trimestre do ano"
else
  puts "valor invalido"
end