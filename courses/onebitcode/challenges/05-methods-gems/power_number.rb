# usando metodos receba um numero base e seu expoente e resolva a potencia

def potencia(base, expoente)
    base ** expoente
end

print "Digite o numero base: "
STDOUT.flush
numero_base = gets.chomp.to_i

print "Digite o expoente: "
STDOUT.flush
expoente = gets.chomp.to_i

resultado = potencia(numero_base, expoente)

puts "A potencia de #{numero_base} elevado a #{expoente} é #{resultado}"