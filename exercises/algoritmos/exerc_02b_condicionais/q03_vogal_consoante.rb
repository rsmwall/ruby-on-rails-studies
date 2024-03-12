# Leia uma letra e verifique se a letra digitada é vogal ou consoante.

print 'Letra: '
letra = gets.chomp.downcase

vogais = 'aeiou'

puts vogais.include?(letra) ? 'Vogal' : 'Consoante'
