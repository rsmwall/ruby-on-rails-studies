regex = /\(\d{2}\)\s\d\s\d{4}\-\d{4}/

print "Digite seu numero [ (99) 9 9999-9999 ]:\n> "
numero = gets.chomp

match_data = regex.match(numero)

puts "O seu whatsapp é #{match_data}"