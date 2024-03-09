#   Leia 3 (três) números (cada número corresponde a um ângulo interno do triângulo), verifique e escreva
#   se os 3 (três) números formam um triângulo (a soma dos ângulos internos é igual a 180o). Se formam,
#   verifique se formam um triângulo acutângulo (3 ângulos < 90o), retângulo (1 ângulo = 90o) ou
#   obtusângulo (1 ângulo > 90o). Não existe ângulo com tamanho 0o (zero grau).

def triangulo?(angulos)
  angulos.reduce { |soma, angulo| soma + angulo } == 180
end

def acutangulo?(angulos)
  return false unless triangulo?(angulos)

  angulos.all? { |angulo| angulo < 90 }
end

def retangulo?(angulos)
  return false unless triangulo?(angulos)

  angulos.any? { |angulo| angulo == 90 }
end

def obtusangulo?(angulos)
  return false unless triangulo?(angulos)

  angulos.any? { |angulo| angulo > 90 }
end

def main
  numeros = []

  3.times do
    print 'Digite o numero: '
    numeros << gets.chomp.to_i
  end

  puts "Eh triangulo: #{triangulo?(numeros)}"
  puts "Eh acutangulo: #{acutangulo?(numeros)}"
  puts "Eh retangulo: #{retangulo?(numeros)}"
  puts "Eh obtusangulo: #{obtusangulo?(numeros)}"
end

main
