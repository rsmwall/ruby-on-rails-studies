# usando classes crie os metodos Esportista, JogadorDeFutebol e Maratonista
# sendo os dois ultimos filhos de Esportista, cada um com seu método
# depois chame os metodos

class Esportista
  def competir
    puts "Participando de uma competição"
  end
end

class JogadorDeFutebol < Esportista
  def correr
    puts "Correndo atrás da bola"
  end
end

class Maratonista < Esportista
  def correr
    puts "Percorrendo o circuito"
  end
end

jogaodor_futebol = JogadorDeFutebol.new
maratonista = Maratonista.new

puts 'Jogador de Futebol'
jogaodor_futebol.competir
jogaodor_futebol.correr

puts 'Maratonista'
maratonista.competir
maratonista.correr
