=begin
  
    HASHES

    Também conhecidos como arrays associativos, maspas ou dicionários

    Quando se armazena um valor em um hash na verdade sse fornece dois objetos
    o índice (normalmente chamado de chave) e o valor desse indice

    Parecido com arrays, mas os arrays só podem ser indexados por inteiros
    enquanto hashes podem ser indexados com objetos de qualquer tipo

    Os valores do hash podem ser de qualquer tipo, bem como seu indice
  
=end

# exemplo 01

h = {'cachorro' => 'canino', 'gato' => 'felino', 
    'burro' => 'asinino', 12 => 'dodezino'}

puts h.length       # 4
puts h['cachorro']  # canino
puts h              # {"cachorro"=>"canino", "gato"=>"felino", "burro"=>"asinino", 12=>"dodezino"}
puts h[12]          # dodezino

# usando simbolos como chaves em um hash (preferência)

pessoa = Hash.new
pessoa[:apelido] = 'GuruIndiano'
pessoa[:idioma] = 'Mrata'
pessoa[:sobrenome] = 'Talim'

puts pessoa[:sobrenome] # Talim

# exemplo 02

h = {
  :apelido => 'GuruIndiano',
  :idioma => 'Marata',
  :sobrenome => 'Talim',
}

puts h

# outra forma de fazer ( exemplo 02 )

h = {apelido: 'GuruIndiano', idioma: 'Marata', sobrenome: "Talim"}

puts h